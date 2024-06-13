# python:3.12.1
FROM python@sha256:00389e020fe42a6c74a8f091ce9b28324422d084efdff26eabe93bc4ae9a110b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
