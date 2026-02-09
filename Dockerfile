# python:3.12.1
FROM python@sha256:1c4c033d666001d84b5c4d85280af2c5a21a4ea1eb86c2fc06e3ef2f33fa6776
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
