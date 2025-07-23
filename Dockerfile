# python:3.12.1
FROM python@sha256:ce366cb5da7dfd825e71ad9bbea1b6ccc889e090dff88fa7d3ade5b96f312ba5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
