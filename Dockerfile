# python:3.12.1
FROM python@sha256:b077ca6a99f3e8f96d686bf4c590ed59079b779ef33090db3fb7cf348ba47c6d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
