# 3.12.0rc3-alpine3.18
FROM python@sha256:17715e8a627c47fa2a52829d470328426afd8de590aabb10a59aadabd7ff0099
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
