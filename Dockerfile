# python:3.12.1
FROM python@sha256:2081144b23b38daa7fae3b7ee4b42cf2f858d88b0452736274aafaba96f3a6b6
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
