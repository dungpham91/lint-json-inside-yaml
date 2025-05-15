# python:3.12.1
FROM python@sha256:653b0cf8fc50366277a21657209ddd54edd125499d20f3520c6b277eb8c828d3
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
