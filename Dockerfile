# python:3.12.1
FROM python@sha256:4b45aa26a4ac4c9e0d63c8a9b72c48ea815d8feac9f2dd89d6faf650f64f7500
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
