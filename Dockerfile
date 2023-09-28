# python:3.9.18-alpine
FROM python@sha256:2e376990a11f1c1e03796d08db0e99c36eadb4bb6491372b227f1e53c3482914
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
RUN apk update && apk upgrade --no-cache && rm -rf ~/.cache/pip
COPY main.py ./
CMD [ "python", "./main.py"]
