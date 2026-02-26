# python:3.12.1
FROM python@sha256:61346539f7b26521a230e72c11da5ebd872924745074b19736e7d65ba748c366
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
