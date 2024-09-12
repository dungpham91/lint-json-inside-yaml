# python:3.12.1
FROM python@sha256:73840b2eacd375e9ab38d65c5ccca1f98524cabccbdc4f9d0932a55d1967a1ab
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
