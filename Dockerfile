# python:3.12.1
FROM python@sha256:671d8548cfc6ec789cbdd74c8585bd614864d1005970167350a2586be8db5650
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
