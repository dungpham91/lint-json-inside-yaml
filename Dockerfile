# python:3.12.1
FROM python@sha256:934873f1360893d07afe0d25b99af46640e916a5900f1677fb86e41f73920253
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
