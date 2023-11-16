# 3.12.0rc3-alpine3.18
FROM python@sha256:89f4c413ac0f36072211bced42ff7e8870cf5347c3cde4b84a67b5f87911b9a3
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
