# python:3.12.1
FROM python@sha256:803c7376e29fb258a58c7e725487a02730677f67da18cecbfc05426f4c7c42b8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
