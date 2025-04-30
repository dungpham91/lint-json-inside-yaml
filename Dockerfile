# python:3.12.1
FROM python@sha256:19c3e9658c3bab523c6ddb025464f3707cf3b1297100827bdb6afbf0c937d99f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
