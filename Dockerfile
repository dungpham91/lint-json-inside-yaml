# python:3.12.1
FROM python@sha256:b41c4877ed4d8a4d6e04f0b341b84f2bd384325816975b1ebf7a2f2e02b7acaa
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
