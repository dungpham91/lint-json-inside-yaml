# python:3.12.1
FROM python@sha256:a6ed02f81e39e498b1d474f0722ff47b6ecaffa1b6432e66749aca14f80f3eb5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
