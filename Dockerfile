# 3.12.0rc3-alpine3.18
FROM python@sha256:2586dd7abe015eeb6673bc66d18f0a628a997c293b41268bc981e826bc0b5a92
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
