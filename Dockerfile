# python:3.12.1
FROM python@sha256:45803c375b95ea33f482e53a461eca8f247617667d703660a06ccf5eb3d05326
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
