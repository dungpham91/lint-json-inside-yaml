# python:3.12.1
FROM python@sha256:d57ec66c94b9497b9f3c66f6cdddc1e4e0bad4c584397e0b57a721baef0e6fdc
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
