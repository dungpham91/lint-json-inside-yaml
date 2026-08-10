# python:3.12.1
FROM python@sha256:3a9d2dd3f18e5c7a9d8de7b3659418a4ab848ccd409fb9e91ef9d7a6a3520ba7
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
