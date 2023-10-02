import os
import json
import sys

# Khai báo và khởi tạo biến global
def init_variables():
    input_paths = os.getenv("INPUT_FILE_OR_DIR")
    repository = os.getenv("GITHUB_REPOSITORY")
    branch = os.getenv("GITHUB_REF")
    github_step_summary = os.getenv('GITHUB_STEP_SUMMARY')

    # Kiểm tra nếu bất kỳ biến nào không được thiết lập, in ra thông báo lỗi và kết thúc chương trình
    if not input_paths:
        print("::error::The INPUT_FILE_OR_DIR environment variable is not set.")
        exit(1)
    if not repository:
        print("::error::The GITHUB_REPOSITORY environment variable is not set.")
        exit(1)
    if not branch:
        print("::error::The GITHUB_REF environment variable is not set.")
        exit(1)

    return input_paths, repository, branch, github_step_summary

def check_folder_or_file(input_paths):
    """
    Check if the input is a folder, a single file, or multiple files/folders.
    Returns a list of files if they are folders, or a list with a single file/folder if it's a single file/folder.
    If an input path is '.', it lists all files in the current directory recursively.

    Parameters:
    input_paths (str): A space-separated string of paths to files or folders.

    Returns:
    list: List of files if they are folders, or a list with a single file/folder if it's a single file/folder.
    str: Error message if any input does not exist.
    """
    input_paths = input_paths.split()  # Split string into list of objects
    files = []
    for input_path in input_paths:
        if input_path == '.':
            # List all files in the current directory and its subdirectories recursively
            for root, _, filenames in os.walk('.'):
                for filename in filenames:
                    files.append(os.path.join(root, filename))
        else:
            # Check if the input_path exists
            if not os.path.exists(input_path):
                return f"Error: {input_path} does not exist."

            # Check if the input_path is a directory
            if os.path.isdir(input_path):
                # List all files in the directory and its subdirectories recursively
                for root, _, filenames in os.walk(input_path):
                    for filename in filenames:
                        files.append(os.path.join(root, filename))
            else:
                # If it's not a directory, assume it's a single file or folder
                files.append(input_path)

    return files

def read_file(file_path):
    """
    Read the content of a file and find all JSON contents within the file.

    Parameters:
    file_path (str): The path to the file to read.

    Returns:
    list: List of JSON contents if found, None if not found.
    """
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            json_contents = []

            # Find JSON content starting with '{' and ending with '}'
            json_start = content.find("{")
            while json_start != -1:
                json_end = content.find("}", json_start + 1)
                if json_end != -1:
                    json_string = content[json_start:json_end + 1]
                    json_contents.append(json_string)
                json_start = content.find("{", json_start + 1)

            if json_contents:
                return json_contents
            else:
                return None

    except Exception as e:
        return None

def validate_json(json_contents, file_name):
    """
    Check the validity of multiple JSON contents and return result information.

    Parameters:
    json_contents (list): List of JSON contents to check.
    file_name (str): The file name.

    Returns:
    str: Validation result and file name.
    """
    if json_contents:
        valid = True
        for index, json_content in enumerate(json_contents):
            try:
                # Check the current JSON content
                json.loads(json_content)
            except json.JSONDecodeError as e:
                valid = False
                print(f"::error::File '{file_name}', JSON block {index + 1} is not valid: {str(e)}")
        if valid:
            # If the JSON is valid, return True
            return True
        else:
            # If the JSON is invalid, return False
            return False
        
    else:
        return f"No JSON content found in '{file_name}'."

def main():
    input_paths, repository, branch, github_step_summary = init_variables()

    invalid_inputs = check_folder_or_file(input_paths)
    if isinstance(invalid_inputs, str):
        print(f"::error::{invalid_inputs}")
        exit(1)

    all_json_valid = True

    if not invalid_inputs:
        print("::warning::No valid files or folders found.")
        exit(1)
    else:
        results = []

        # Định nghĩa các biến đếm cho các cột
        passed_count = 0
        failed_count = 0
        empty_count = 0
        skipped_count = 0

        for file_path in invalid_inputs:
            # Lấy tên branch từ GITHUB_REF
            branch_name = branch.split("/")[-1]

            # Tạo đường dẫn đầy đủ đến tệp trong repository
            file_url = f"https://github.com/{repository}/blob/{branch}/{file_path}"

            json_contents = read_file(file_path)
            if json_contents is not None:
                result = validate_json(json_contents, os.path.basename(file_path))
                if result is True:
                    passed_count += 1
                    results.append(f"| [{file_path}]({file_url}) | :white_check_mark: | | | | JSON data is valid |")
                elif result is False:
                    failed_count += 1
                    results.append(f"| [{file_path}]({file_url}) | | :x: | | | JSON is not valid |")
                elif result == "empty":
                    empty_count += 1
                    results.append(f"| [{file_path}]({file_url}) | | | :grey_exclamation: | | file is empty |")
                elif result == "skipped":
                    skipped_count += 1
                    results.append(f"| [{file_path}]({file_url}) | | | | :arrow_right_hook: | Skipped |")

        # Tạo bảng Markdown
        summary = f"| :open_file_folder: **File** | :white_check_mark: **Passed** | :x: **Failed** | :grey_exclamation: **Empty** | :arrow_right_hook: **Skipped** | :trollface: **Message** |\n| ------ | ------ | ------ | ------ | ------ | ------ |\n{'\n'.join(results)}"

        github_step_summary = os.getenv('GITHUB_STEP_SUMMARY')
        if github_step_summary:
            with open(github_step_summary, 'a') as file:
                file.write(summary + '\n')

if __name__ == "__main__":
    main()
