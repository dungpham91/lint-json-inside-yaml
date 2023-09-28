import os
import json
import sys

def check_folder_or_file(input_path):
    """
    Check if the input is a folder, a single file, or multiple files.
    Returns a list of files if it's a folder or a list with a single file if it's a single file.

    Parameters:
    input_path (str): The path to the folder or file.

    Returns:
    list: List of files if it's a folder, or a list with a single file if it's a single file.
    """
    if os.path.isdir(input_path):
        files = os.listdir(input_path)
        return [os.path.join(input_path, file) for file in files]
    elif os.path.isfile(input_path):
        return [input_path]
    else:
        return []

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
        sys.exit(1)

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
                sys.exit(1)
        if valid:
            return f"File '{file_name}' is valid."
        else:
            return f"File '{file_name}' is not valid."
            sys.exit(1)
    else:
        return f"No JSON content found in '{file_name}'."

def main():
    input_path = os.getenv("INPUT_FILE_OR_DIR")

    if not input_path:
        print("The INPUT_FILE_OR_DIR environment variable is not set.")
        return
        sys.exit(1)

    files = check_folder_or_file(input_path)

    if not files:
        print("No valid files or folders found.")
        sys.exit(1)
    else:
        for file_path in files:
            json_contents = read_file(file_path)
            if json_contents is not None:
                result = validate_json(json_contents, os.path.basename(file_path))
                print(result)
            else:
                print(f"No JSON content found in '{file_path}'.")

if __name__ == "__main__":
    main()
