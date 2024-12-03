# python:3.12.1
FROM python@sha256:e8ad0abd7a71d3a386fd918d3bf0fc087bac5e47fb6ac462dfec17c62c579645
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
