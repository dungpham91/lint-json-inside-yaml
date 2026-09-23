# python:3.12.1
FROM python@sha256:be8ccd085666c34273c9dc5607c9842f8b2e3116128aae45148ce164c07ce09d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
