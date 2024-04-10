# python:3.12.1
FROM python@sha256:67414d5ed7792f54139c96be1934ce3b27c11c072eae51298f2e648e82e19938
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
