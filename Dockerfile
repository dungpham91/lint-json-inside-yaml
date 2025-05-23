# python:3.12.1
FROM python@sha256:a4b2b11a9faf847c52ad07f5e0d4f34da59bad9d8589b8f2c476165d94c6b377
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
