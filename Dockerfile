# python:3.12.1
FROM python@sha256:4f3780acb8d126492a8890a1e1715d36773c0cc1865b5aa569ba857548d0f51f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
