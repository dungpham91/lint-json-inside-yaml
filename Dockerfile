# python:3.12.1
FROM python@sha256:5c485439db26ba10745100656f6712d662075edb7ec6861dda715bcdfe579b29
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
