# python:3.12.1
FROM python@sha256:2ca6cda25055227533141435ab8ec0dd3afd9165d78d8bf0f58c8d959d57b9fc
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
