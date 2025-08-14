# python:3.12.1
FROM python@sha256:1e4584c017d9cecf8a952cfd8f8e47ef5611b28dfc29da9e1d4b6bad98daf9b0
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
