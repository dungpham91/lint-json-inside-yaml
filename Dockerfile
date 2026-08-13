# python:3.12.1
FROM python@sha256:297cf11d0b98b38ac26a56136f0279df845314bcd0347c1f6383fee6e75125ee
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
