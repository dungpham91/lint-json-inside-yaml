# python:3.12.1
FROM python@sha256:a09f71f4af992ddf9a620330fed343c850c371251be45c3f9bb46ebeca49c9c6
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
