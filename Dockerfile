# python:3.12.1
FROM python@sha256:8676e2e7a07b736aeea297a13a42ab7b235940623a7fcd3815c336662ffe33c8
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
