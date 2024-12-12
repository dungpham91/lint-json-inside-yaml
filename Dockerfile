# python:3.12.1
FROM python@sha256:9255d1993f6d28b8a1cd611b108adbdfa38cb7ccc46ddde8ea7d734b6c845e32
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
