# python:3.12.1
FROM python@sha256:18ecbd0f5b70ebd15c1b510b58899def5e0e21260f59477e8186565977d2402c
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
