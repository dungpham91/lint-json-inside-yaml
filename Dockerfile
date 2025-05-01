# python:3.12.1
FROM python@sha256:884da97271696864c2eca77c6362b1c501196d6377115c81bb9dd8d538033ec3
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
