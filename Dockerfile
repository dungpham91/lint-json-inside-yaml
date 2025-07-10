# python:3.12.1
FROM python@sha256:28f60ab75da2183870846130cead1f6af30162148d3238348f78f89cf6160b5d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
