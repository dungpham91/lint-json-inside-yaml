# python:3.12.1
FROM python@sha256:8c9a3bf2d6dea60d60a2ae2a07c2b2fb1e7d8daed64b146b6792c74ae0d62ac4
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
