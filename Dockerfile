# 3.12.0rc3-alpine3.18
FROM python@sha256:1615c71b5f3d48844b8d20cac4838f34267d96c3b061dcb6e4fda61a71599a9d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
