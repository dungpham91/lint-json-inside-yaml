import os
import json

def check_folder_or_file(input_path):
    """
    Kiểm tra xem input là thư mục, 1 file hoặc nhiều file.
    Trả về danh sách các tệp nếu là thư mục hoặc danh sách với một tệp nếu là tệp đơn.

    Parameters:
    input_path (str): Đường dẫn đến thư mục hoặc tệp.

    Returns:
    list: Danh sách tệp nếu là thư mục hoặc danh sách với một tệp nếu là tệp đơn.
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
    Đọc nội dung của tệp và tìm tất cả các nội dung JSON trong tệp.

    Parameters:
    file_path (str): Đường dẫn đến tệp cần đọc.

    Returns:
    list: Danh sách các nội dung JSON nếu tìm thấy, None nếu không tìm thấy.
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

def validate_json(json_contents, file_name):
    """
    Kiểm tra tính hợp lệ của nhiều nội dung JSON và trả về thông tin kết quả.

    Parameters:
    json_contents (list): Danh sách các nội dung JSON cần kiểm tra.
    file_name (str): Tên tệp.

    Returns:
    str: Kết quả kiểm tra hợp lệ và tên tệp.
    """
    if json_contents:
        valid = True
        for index, json_content in enumerate(json_contents):
            try:
                # Kiểm tra nội dung JSON hiện tại
                json.loads(json_content)
            except json.JSONDecodeError as e:
                valid = False
                print(f"File '{file_name}', JSON #{index + 1} không hợp lệ: {str(e)}")
        if valid:
            return f"File '{file_name}' hợp lệ."
        else:
            return f"File '{file_name}' không hợp lệ."
    else:
        return f"Không tìm thấy nội dung JSON trong '{file_name}'."

def main(input_path):
    files = check_folder_or_file(input_path)

    if not files:
        print("Không tìm thấy tệp hoặc thư mục hợp lệ.")
    else:
        for file_path in files:
            json_contents = read_file(file_path)
            if json_contents is not None:
                result = validate_json(json_contents, os.path.basename(file_path))
                print(result)
            else:
                print(f"Không tìm thấy nội dung JSON trong '{file_path}'.")

if __name__ == "__main__":
    # input_path = input("Enter the folder or file path: ")
    input_path = "/home/dung/1-github.com/1-dungpham91/lint-json-inside-yaml/test-data"
    main(input_path)
