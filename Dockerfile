# python:3.12.1
FROM python@sha256:df3f05ff4d74833f52146edd195c8f7913581b57796a820fb7e373457ace9bad
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
