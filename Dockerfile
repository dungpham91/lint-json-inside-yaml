# python:3.12.1
FROM python@sha256:d29cf0828933ed271be9234ca2c2d578c16f2911451418aacc4525ac04ac7114
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
