# python:3.12.1
FROM python@sha256:85a0f837cbccd166f1a3b871deac3201e11b3ff27cd88832af66744dbc973712
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
