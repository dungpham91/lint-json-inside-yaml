# python:3.12.1
FROM python@sha256:6f473f84b09fccf411d4875e19e9e2796b59d6b3c722463d2963384a43e59f39
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
