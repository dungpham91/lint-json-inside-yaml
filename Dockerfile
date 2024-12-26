# python:3.12.1
FROM python@sha256:c286f03b5b7ffbefa9c45b87c4d27f952b3706b180dc591cd983800d2e6a1fcb
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
