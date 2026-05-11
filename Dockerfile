# python:3.12.1
FROM python@sha256:511f025a0718f01b977d5ad572bc431745b31887ceccc538c85b87e82ad2956f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
