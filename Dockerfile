# python:3.12.1
FROM python@sha256:fe25486761b95cef1cb66635df7c190fd7f57dff7415cdf3ace477f1551b11d1
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
