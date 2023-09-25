import json

def read_and_extract_json(filename, search_string):
    json_string = ""
    json_start = None
    json_end = None
    found_search_string = False

    with open(filename, 'r') as file:
        lines = file.readlines()

    for i, line in enumerate(lines):
        if search_string in line:
            found_search_string = True
            json_start = i + 1  # Dòng tiếp theo sau dòng chứa chuỗi cần tìm
            continue
        
        if found_search_string:
            if not line.strip() and json_start is not None:  # Dòng trống đầu tiên sau dòng chứa chuỗi cần tìm
                json_end = i
                break
            elif json_start is not None:
                json_string += line

    if json_start is not None and json_end is not None:
        print(f"json_string: {json_string}")
        json_string = json_string.strip()
        try:
            parsed_json = json.loads(json_string)
            return parsed_json
        except json.JSONDecodeError as e:
            return f"Không thể phân tích JSON: {str(e)}"
    else:
        return "Không tìm thấy chuỗi cần tìm trong tệp."

# Sử dụng hàm để đọc và trích xuất JSON từ tệp
filename = '/home/dung/1-github.com/1-dungpham91/lint-json-inside-yaml/test-data/json-not-ok-5.yaml'  # Thay thế bằng đường dẫn tới tệp tin của bạn
search_string = '>-'

result = read_and_extract_json(filename, search_string)
print(result)
