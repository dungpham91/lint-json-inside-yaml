# 3.12.0rc3-alpine3.18
FROM python@sha256:1987c4ae3b5afaa3a7c5e247e9eaab7348082ba167986ca90d4d6a197fb364e8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
