# python:3.12.1
FROM python@sha256:0040600478fe761fbaea26b16cb4ce1b520e5aa1cef26d0762c538ece5892c02
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
