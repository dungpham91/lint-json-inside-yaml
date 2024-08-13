# python:3.12.1
FROM python@sha256:7e6591e7c40d1450ccc8a22f4a7f20c6aaa14e5fcab1d0b8b364d936f7b2b8e5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
