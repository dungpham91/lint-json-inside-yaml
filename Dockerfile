# python:3.12.1
FROM python@sha256:4584ea46d313a10e849eb7c5ef36be14773418233516ceaa9e52a8ff7d5e35a5
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
