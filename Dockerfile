# python:3.12.1
FROM python@sha256:8428c32065df71d5a7763099ccb8ee215314129b50d395f95ad589151887d52f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
