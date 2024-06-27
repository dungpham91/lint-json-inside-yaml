# python:3.12.1
FROM python@sha256:fce9bc7648ef917a5ab67176cf1c7eb41b110452e259736144bc22f32f3aa622
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
