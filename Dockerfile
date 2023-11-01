# 3.12.0rc3-alpine3.18
FROM python@sha256:dd7a653e4c4e9f6c505a6fb709bf1a51ad9d834a5157d6017b07a561d9c4bc46
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
