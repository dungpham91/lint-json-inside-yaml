# python:3.12.1
FROM python@sha256:a31cbb4db18c6f09e3300fa85b77f6d56702501fcb9bdb8792ec702a39ba6200
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
