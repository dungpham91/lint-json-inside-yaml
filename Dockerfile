# python:3.12.1
FROM python@sha256:99536892f722b2a8f83c7b3a1e26734e1c183aa914f6cad1d89d9adb68b4dd90
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
