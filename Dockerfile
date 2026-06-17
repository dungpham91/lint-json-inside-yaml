# python:3.12.1
FROM python@sha256:4d7dd74c5b2d3151fe58eb8ecc9c56be13471a240ce5423ba765b04f8f95ebe8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
