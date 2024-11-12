# python:3.12.1
FROM python@sha256:5b5dd1a0950084ef399eae9ec6210b30a7f1b5389c95aa3f64759fba4d2b3a24
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
