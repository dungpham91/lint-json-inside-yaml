# python:3.12.1
FROM python@sha256:0ba001803c72c128063cfa88863755f905cefabe73c026c66a5a86d8f1d63e98
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
