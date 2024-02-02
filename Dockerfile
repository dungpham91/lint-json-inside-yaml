# python:3.12.1
FROM python@sha256:690924bb394da687beb5c2b6a439d556ee6b88659a0a4e0cba7c82c5df7a28d7
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
