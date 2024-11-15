# python:3.12.1
FROM python@sha256:bc78d3c007f86dbb87d711b8b082d9d564b8025487e780d24ccb8581d83ef8b0
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
