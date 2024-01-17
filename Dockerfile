# 3.12.0rc3-alpine3.18
FROM python@sha256:6f4b96ba7d04bf04f8d004723cb81231ff05feeef2b0fd0a2d604d10b13f758d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
