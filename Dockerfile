# python:3.12.1
FROM python@sha256:147621a0ced957e4cae0b713fcf77a31b01ebca9ecf894cad5ae2879248d2dcf
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
