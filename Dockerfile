# python:3.12.1
FROM python@sha256:165e434a1a12549ed9b7cc0e4440c44ed5d7614af9d6df0e9f2395ae70f90ed4
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
