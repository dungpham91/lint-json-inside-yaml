# python:3.12.1
FROM python@sha256:f6d04873f0a67146854270e5f6513ed5e0165557c1b10689f1a20e9e65c8fe8e
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
