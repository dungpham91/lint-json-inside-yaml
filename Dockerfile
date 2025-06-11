# python:3.12.1
FROM python@sha256:eec1b4e88e8762b4711b9f5fd69648b96ac04864e56993769cf50a9891a1d317
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
