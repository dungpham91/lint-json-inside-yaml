# python:3.12.1
FROM python@sha256:a6af772cf98267c48c145928cbeb35bd8e89b610acd70f93e3e8ac3e96c92af8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
