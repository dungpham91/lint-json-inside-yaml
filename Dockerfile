# python:3.12.1
FROM python@sha256:63fdc2bca05b142ef64d05e8f9dbc4e8bf9f51294824db5c3d8b10f419fe1bdd
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
