# python:3.12.1
FROM python@sha256:7be9b757ea8fa90b43efd604dd5ef2923364230f00564b2ea7f0982d24b374c9
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
