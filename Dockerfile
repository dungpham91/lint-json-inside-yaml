# python:3.12.1
FROM python@sha256:e8fd0c972ceb973066265ed2ea7235b502c736a283993524ac58e42becd5d9f8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
