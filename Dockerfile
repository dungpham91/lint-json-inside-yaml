# 3.12.0rc3-alpine3.18
FROM python@sha256:ae872083911777928d661bd4b2a21fe0368c3ec9347e4e512f9252ce2224bb5d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
