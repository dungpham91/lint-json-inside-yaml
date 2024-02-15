# python:3.12.1
FROM python@sha256:eddb404b523afd920cb1bc31ff7309f6375898baf506ab2bb1e31357da693426
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
