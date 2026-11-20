# python:3.12.1
FROM python@sha256:46837ed3105db0029b6d656816185c6258e3b39690532fb782428e0a5fd76182
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
