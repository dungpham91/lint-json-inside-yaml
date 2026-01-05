# python:3.12.1
FROM python@sha256:6d58c1a9444bc2664f0fa20c43a592fcdb2698eb9a9c32257516538a2746c19a
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
