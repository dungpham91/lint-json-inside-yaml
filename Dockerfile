# python:3.12.1
FROM python@sha256:785fef11f44b7393c03d77032fd72e56af8b05442b051a151229145e5fbbcb29
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
