# python:3.12.1
FROM python@sha256:b66f77a332babd8b2b0190f10a65eeb90c49d8da4696f7a3436baf1b1220eeec
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
