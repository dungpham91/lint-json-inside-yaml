# 3.12.0rc3-alpine3.18
FROM python@sha256:7e082bf2ab924afce07aef447111cea2e87c50778ca7b5d7cfbf09692c7e3269
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
