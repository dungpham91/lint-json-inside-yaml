# python:3.12.1
FROM python@sha256:9744f1b8c8a85979c6c4b80052aca78f76d3cb2b1bb5d39a6b2a00e69fe580e5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
