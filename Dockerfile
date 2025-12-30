# python:3.12.1
FROM python@sha256:5fdc8ebf11011d0ba678ed64dd4f562f76b998ddea07568dcf1a03ac9f941ce3
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
