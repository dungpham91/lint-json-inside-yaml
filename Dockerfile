# python:3.12.1
FROM python@sha256:a461539b262bcec490d5c7dc0af7b90f204a1851d6d94fcdbb7fad7bd8b9aef6
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
