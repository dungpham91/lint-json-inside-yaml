# python:3.12.1
FROM python@sha256:a9710c44d58cb3fcba391e09b20e52147caf99be418aac2ba4ffa128435fc303
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
