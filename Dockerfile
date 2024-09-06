# python:3.12.1
FROM python@sha256:11aa4b620c15f855f66f02a7f3c1cd9cf843cc10f3edbcf158e5ebcd98d1f549
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
