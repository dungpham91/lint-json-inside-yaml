# python:3.12.1
FROM python@sha256:3de5d55a43a58c09ed47952b15d87ea8d18d82bc616a9277b9ddd0e6dd25b3f0
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
