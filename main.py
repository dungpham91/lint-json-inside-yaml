import os
import json
import sys

def check_folder_or_file(input_paths):
    """
    Check if the input is a folder, a single file, or multiple files/folders.
    Returns a list of files if they are folders, or a list with a single file/folder if it's a single file/folder.
    If an input path is '.', it lists all files in the current directory recursively.

    Parameters:
    input_paths (str): A space-separated string of paths to files or folders.

    Returns:
    list: List of files if they are folders, or a list with a single file/folder if it's a single file/folder.
    """
    input_paths = input_paths.split()  # Chia chuỗi thành danh sách các đối tượng
    files = []
    for input_path in input_paths:
        if input_path == '.':
            # List all files in the current directory and its subdirectories recursively
            for root, _, filenames in os.walk('.'):
                for filename in filenames:
                    files.append(os.path.join(root, filename))
        else:
            # Check if the input_path is a directory
            if os.path.isdir(input_path):
                # List all files in the directory and its subdirectories recursively
                for root, _, filenames in os.walk(input_path):
                    for filename in filenames:
                        files.append(os.path.join(root, filename))
            else:
                # If it's not a directory, assume it's a single file or folder
                if os.path.exists(input_path):
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
                print(f"File '{file_name}', JSON #{index + 1} is not valid: {str(e)}")
        if valid:
            # If the JSON is valid, return True
            return True
        else:
            # If the JSON is invalid, return False
            return False
        
    else:
        return f"No JSON content found in '{file_name}'."

def main():
    input_paths = os.getenv("INPUT_FILE_OR_DIR")

    if not input_paths:
        print("The INPUT_FILE_OR_DIR environment variable is not set.")
        exit(1)

    files = check_folder_or_file(input_paths)
    # Set a variable that tracks whether all JSON is valid or not
    all_json_valid = True

    if not files:
        print("No valid files or folders found.")
        exit(1)
    else:
        for file_path in files:
            json_contents = read_file(file_path)
            if json_contents is not None:
                result = validate_json(json_contents, os.path.basename(file_path))
                if result is True:
                    print(f"File '{file_path}' is valid.\n")
                else:
                    print(f"File '{file_path}' is not valid.\n")
                if not result:
                    all_json_valid = False
            else:
                print(f"No JSON content found in '{file_path}'.\n")

    if all_json_valid:
        exit(0)
    else:
        exit(1)

if __name__ == "__main__":
    main()
