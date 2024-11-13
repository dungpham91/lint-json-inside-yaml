# python:3.12.1
FROM python@sha256:7cbaafdb2751702bbca474e69bd518c5504c4f34d6cd1c9e6f2e8d3072a582df
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
