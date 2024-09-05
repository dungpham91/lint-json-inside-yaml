# python:3.12.1
FROM python@sha256:3c085580c5f27bb93b90ecf6be3fb62a093d40d7552d13b9cfbfb0f117064ae6
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
