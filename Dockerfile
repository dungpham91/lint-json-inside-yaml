# python:3.12.1
FROM python@sha256:2a8b92a1e9eb6ef2c888eb7e6c91283788c6d613fdc8fc22e12346aff7c4406d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
