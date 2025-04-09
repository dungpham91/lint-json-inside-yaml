# python:3.12.1
FROM python@sha256:9819e5616923079cc16af4a93d4be92c0c487c6e02fd9027220381f3e125d64a
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
