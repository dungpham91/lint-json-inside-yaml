# 3.12.0rc3-alpine3.18
FROM python@sha256:5a88c14f0f26df7a092edc139bdec35621e8ac11f8c95b38d2a9283bad0cfce1
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
