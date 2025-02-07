# python:3.12.1
FROM python@sha256:589ed6659c0e4aac182f309131cd35e85452d21072570b1f6abc45b7687093a3
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
