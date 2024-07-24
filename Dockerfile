# python:3.12.1
FROM python@sha256:2080735559b825ad4c303be9d28fdc20befdea6bf8b16023fb0121f8525f583e
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
