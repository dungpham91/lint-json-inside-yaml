# python:3.12.1
FROM python@sha256:9234c2fd80143741d28153f66dc306f0448c477a7d965df83107373411509357
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
