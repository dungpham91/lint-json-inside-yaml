# python:3.12.1
FROM python@sha256:19973e1796237522ed1fcc1357c766770b47dc15854eafdda055b65953fe5ec1
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
