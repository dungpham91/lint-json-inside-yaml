# python:3.12.1
FROM python@sha256:3966b81808d864099f802080d897cef36c01550472ab3955fdd716d1c665acd6
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
