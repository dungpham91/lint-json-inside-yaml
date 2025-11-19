# python:3.12.1
FROM python@sha256:6942ebef735aad5f708ef9c5e750cbe37dbc7751cee35c140e33764e34843ab9
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
