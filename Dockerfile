# python:3.12.1
FROM python@sha256:5ada2b3e9586c924a8c81d6a35e6016f4fc261429dbd7e5c6ae724431003dcee
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
