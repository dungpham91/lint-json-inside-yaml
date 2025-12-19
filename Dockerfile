# python:3.12.1
FROM python@sha256:492b292a9449d096aefe5b1399cc64de53359845754da3e4d2539402013c826b
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
