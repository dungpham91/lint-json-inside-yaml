# python:3.12.1
FROM python@sha256:a8aab6d8cce4d31c10dda046d6d940fc30b64de3438f7969f0db0ab19f3469f9
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
