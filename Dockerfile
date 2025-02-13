# python:3.12.1
FROM python@sha256:08471c63c5fdf2644adc142a7fa8d0290eb405cda14c473fbe5b4cd0933af601
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
