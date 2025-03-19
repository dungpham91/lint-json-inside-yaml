# python:3.12.1
FROM python@sha256:8c55c44b9e81d537f8404d0000b7331863d134db87c1385dd0ec7fefff656495
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
