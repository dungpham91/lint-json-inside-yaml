# python:3.12.1
FROM python@sha256:3dd4610d584049295cb210ff083ac86fdc203f04fa7cdf194516cd577c4bb90f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
