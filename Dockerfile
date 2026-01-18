# python:3.12.1
FROM python@sha256:37cba1153c7a3cd4477640ce0f976f7460308f812bc29d7149532e352a97ac8b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
