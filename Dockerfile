# python:3.12.1
FROM python@sha256:220d07595f288567bbf07883576f6591dad77d824dce74f0c73850e129fa1f46
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
