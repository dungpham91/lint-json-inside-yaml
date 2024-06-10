# python:3.12.1
FROM python@sha256:ad26bf20080f6b43a7f10020201fb95a678445be9040c111e034d86dc0c80d71
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
