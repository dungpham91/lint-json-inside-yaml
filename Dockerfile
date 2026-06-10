# python:3.12.1
FROM python@sha256:fe6ffb340c566fe7459832667da8b545896edb30c3dce0c3b1218ab4d377ba7d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
