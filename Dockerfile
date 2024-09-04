# python:3.12.1
FROM python@sha256:e94382c058b2e432e702c3f39b51a93be68611e5326b813fa790527944317c6a
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
