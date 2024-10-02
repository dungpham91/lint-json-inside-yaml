# python:3.12.1
FROM python@sha256:14f073695854184b65a82808ea2baa352d49c1a86442f06a90d9c236861c7a8f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
