# python:3.9.18-alpine
FROM python@sha256:eed69b68533d9083a09fc3f611a21f8c812b4fea29ab2e48c7f9372df3b13c3e
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
RUN apk update && apk upgrade --no-cache && rm -rf ~/.cache/pip
COPY main.py ./
CMD [ "python", "./main.py"]
