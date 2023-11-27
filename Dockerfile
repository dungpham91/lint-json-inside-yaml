# 3.12.0rc3-alpine3.18
FROM python@sha256:31ceea009f42df76371a8fb94fa191f988a25847a228dbeac35b6f8d2518a6ef
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
