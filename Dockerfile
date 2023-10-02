# 3.12.0rc3-alpine3.18
FROM python@sha256:dd402fb2441ca23459b374e6a87b0f865ad9168a1e67aeab7d3f73018442ebe5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
