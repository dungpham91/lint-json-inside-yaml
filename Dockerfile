# python:3.12.1
FROM python@sha256:fbf695a1b7e4fd39dfac43165c0da0949262531ecd8e901abe641d79f596af80
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
