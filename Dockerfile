# python:3.12.1
FROM python@sha256:b40b4e5c86136e5400e9347459a9366315ff129e07175fdde8e221147ec5d541
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
