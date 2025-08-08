# python:3.12.1
FROM python@sha256:68d0775234842868248bfe185eece56e725d3cb195f511a21233d0f564dee501
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
