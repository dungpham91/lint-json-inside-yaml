# python:3.12.1
FROM python@sha256:ab70aee8e1bc6ffe4f95953ee2a98ca545123195a2b56d4338c7ea8ff5744a20
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
