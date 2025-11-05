# python:3.12.1
FROM python@sha256:92b51c6fa86611bbf2000abf360a206837cee8071b382119990eb48ee3953827
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
