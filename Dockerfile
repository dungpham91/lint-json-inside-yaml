# python:3.12.1
FROM python@sha256:100002d992a6b588261d6e1651adcde1dd08347916065c7a87ee459a65fe919a
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
