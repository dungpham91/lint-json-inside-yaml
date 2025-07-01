# python:3.12.1
FROM python@sha256:6f244021b4eebc18b8b577ada606b5765b907bd547dacadfa132fe2acfa5f58f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
