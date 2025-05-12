# python:3.12.1
FROM python@sha256:3abe339a3bc81ffabcecf9393445594124de6420b3cfddf248c52b1115218f04
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
