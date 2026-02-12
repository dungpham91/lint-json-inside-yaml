# python:3.12.1
FROM python@sha256:151ab3571dad616bb031052e86411e2165295c7f67ef27206852203e854bcd12
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
