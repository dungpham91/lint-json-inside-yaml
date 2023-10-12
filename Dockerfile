# 3.12.0rc3-alpine3.18
FROM python@sha256:5624c7648b31ecd8b03eef4b0805f3ecd8b9703a7caf2480c0d3beb2a09968b4
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
