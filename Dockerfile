# python:3.12.1
FROM python@sha256:b370b01487e7e82d0ef36bad3da30fc66f3466444b9157f28bb4fec6b5023d4b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
