# python:3.12.1
FROM python@sha256:2eedc86b81f2336841f4eed06dff14937d37ec172eec655434fd478eacb1ea49
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
