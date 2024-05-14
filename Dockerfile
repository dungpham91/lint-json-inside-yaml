# python:3.12.1
FROM python@sha256:9e972ea6be3b624a3b33d2e5011e08de899c0c71fe490a910dd3ed8d65924758
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
