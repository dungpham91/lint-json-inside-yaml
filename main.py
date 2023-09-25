#!/usr/bin/python3
import os
import json
import re

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
            print(f"Đang kiểm tra file: '{file_path}'.")
            print("-------------------")

            # Đọc nội dung của file YAML
            content = file.read()
            json_contents = []

            lines = file.readlines()

            json_start = None
            json_end = None
            found_character = False
        
            # Loại bỏ các dòng bắt đầu bằng ký tự '#' hoặc '//'
            content = re.sub(r'^\s*#.*$', '', content, flags=re.MULTILINE)
            content = re.sub(r'^\s*\/\/.*$', '', content, flags=re.MULTILINE)

            # Khai báo các ký tự đặc biệt đại diện cho một nội dung JSON trong file YAML
            json_detect_characters = {">-", ">", "|-", "!!json |", "!!str |"}

            # for i, line in enumerate(lines):
            #     for detect_character in json_detect_characters:
            #         if detect_character in line:
            #             print(f"Phát hiện ký tự '{detect_character}' trong file. Tiến hành trích dữ liệu JSON theo ký tự này.")
            #             found_character = True
            #             json_start = i + 1
            #             continue

            #         if found_character:
            #             if not line.strip() and json_start is not None:
            #                 json_end = i
            #                 break
            #             elif json_start is not None:
            #                 json_contents += line

            # print(f"json_contents: {json_contents}")

            # Nếu tìm được các ký tự đặc biệt thuộc json_detect_characters trong file
            for detect_character in json_detect_characters:
                if detect_character in content:
                    print(f"Phát hiện ký tự '{detect_character}' trong file. Tiến hành trích dữ liệu JSON theo ký tự này.")
                    # Sử dụng biểu thức chính quy để tìm nội dung JSON bắt đầu từ ký tự nhận diện và kết thúc bằng dấu xuống dòng
                    json_pattern = re.escape(detect_character) + r'(.+?)(?:\n|$)'
                    print(f"json_pattern: {json_pattern}")
                    json_match = re.search(json_pattern, content, re.DOTALL)
                    print(f"json_matches: {json_matches}")

                    for json_match in json_matches:
                        json_contents.append(json_match.strip())
                    print(f"json_contents: {json_contents}")

                    # # Tìm nội dung JSON bắt đầu từ ký tự đặc biệt được phát hiện và kết thúc bằng dòng trống đầu tiên tính từ ký tự đó
                    # json_start = content.find(detect_character)
                    # while json_start != -1:
                    #     # Tìm dòng trống sau vị trí json_start
                    #     json_end = content.find('\n', json_start + 2)
                    #     print(f"json_start: {json_start}")
                    #     print(f"json_end: {json_end}")
                    #     if json_end != -1:
                    #         # Tìm thấy dòng trống, thêm dòng này vào danh sách json_contents nếu cần
                    #         json_string = content[json_start + 1:json_end]
                    #         json_contents.append(json_string)
                    #         print("Nội dung JSON là:")
                    #         print(json_contents)
                    #     # Tiếp tục tìm các dấu ">-" tiếp theo
                    #     json_start = content.find(detect_character, json_end)
                else:
                    print(f"Không phát hiện ký tự '{detect_character}' trong file.")

            if not json_contents:
                print("Tiến hành tìm nội dung JSON theo cặp ký tự { ... }")
                # Tìm nội dung JSON bắt đầu từ ký tự { và kết thúc bằng ký tự }
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
            return f"==> File '{file_name}' hợp lệ."
        else:
            return f"==> File '{file_name}' không hợp lệ."
    else:
        return f"==> Không tìm thấy nội dung JSON trong '{file_name}'."

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
                print()
            else:
                print(f"==> Không tìm thấy nội dung JSON trong '{file_path}'.")
                print()

if __name__ == "__main__":
    # input_path = input("Enter the folder or file path: ")
    input_path = "/home/dung/1-github.com/1-dungpham91/lint-json-inside-yaml/test-data"
    main(input_path)
