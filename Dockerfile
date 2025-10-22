# python:3.12.1
FROM python@sha256:6f488d4812c59fa17cfc1a766d8d09ceb102fde42f341230bd6229e15b3e78e8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
