# python:3.12.1
FROM python@sha256:c32aeafeda56c09a4220b2b56d49d5efd0d803c302abdd5643b0bddb7ccd57aa
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
