# 3.12.0rc3-alpine3.18
FROM python@sha256:f964ddcb8416013f62f4b7a8c72a332ba4ccd284e39c263ea7bc0375ca8f2c4b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
