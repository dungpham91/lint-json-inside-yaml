# python:3.12.1
FROM python@sha256:fe841081ec55481496a4ab25e538833741295d57d2abdec8d38d74d65fb4715b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
