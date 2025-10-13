# python:3.12.1
FROM python@sha256:049247cbb7ce998685d780c9d5325781a7429bc6693bbfab86bcb8e36e7a059e
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
