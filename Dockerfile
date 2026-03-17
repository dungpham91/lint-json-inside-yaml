# python:3.12.1
FROM python@sha256:b84cdd2fa6cecfbe93ba5a21a019500da70d9c1586448ad23b674ae859b48ada
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
