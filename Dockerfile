# 3.12.0rc3-alpine3.18
FROM python@sha256:a25e0cf180ee1bbbc103bb39508fb12b75020427abaaff83bec5999454c3735f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
