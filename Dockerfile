# python:3.12.1
FROM python@sha256:f3210a082bd093de885875de43a3338f4089860806d78a74de7ed4e58d12630c
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
