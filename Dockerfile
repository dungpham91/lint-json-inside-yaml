# python:3.12.1
FROM python@sha256:8d49c213d2b2e760edbec28c2c4c4b2d22d0f90c28c863abfc5594fe36feb740
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
