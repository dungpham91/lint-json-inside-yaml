# python:3.12.1
FROM python@sha256:721b56139b0c6f8512286bd0d3d2edefe34dffc7ab488fc8aa39ed129e0ad6b5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
