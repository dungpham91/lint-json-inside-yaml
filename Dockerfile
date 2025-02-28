# python:3.12.1
FROM python@sha256:385ccb8304f6330738a6d9e6fa0bd7608e006da7e15bc52b33b0398e1ba4a15b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
