# python:3.12.1
FROM python@sha256:c608f8ffb59800d6cc97a8fe3d0f1c5f7477cf43ff5120e05b6f74fd830699b7
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
