# python:3.12.1
FROM python@sha256:031148f34a4a6b2c1c30960c977eb292df28179b67142c2eae3701284e6af829
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
