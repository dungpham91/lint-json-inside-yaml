# python:3.12.1
FROM python@sha256:5b95b240f2db781f34a5da81e6e2301378495b3ab78d689df325c937be267e1c
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
