# python:3.12.1
FROM python@sha256:f78ea8a345769eb3aa1c86cf147dfd68f1a4508ed56f9d7574e4687b02f44dd1
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
