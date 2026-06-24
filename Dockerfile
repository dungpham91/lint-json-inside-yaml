# python:3.12.1
FROM python@sha256:cbb768ddb9e20b55a46e8c3cf9f4caeddd367bd3dc9838c90785ee32962454fa
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
