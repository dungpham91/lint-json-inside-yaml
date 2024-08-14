# python:3.12.1
FROM python@sha256:e3d5b6f95ce66923b5e48a06ee5755abb097de96a8617c3f2f7d431d48e63d35
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
