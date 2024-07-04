# python:3.12.1
FROM python@sha256:d12b529fba98bcc93e2e2e837c0a60efaa6328775965a43c1b8161cfbd8f10f3
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
