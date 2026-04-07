# python:3.12.1
FROM python@sha256:788c343877b467e72af452878cb6d2b0ce6a16ffed973e2dc82b57d8d765eb33
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
