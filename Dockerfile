# python:3.12.1
FROM python@sha256:edf6433343f65f94707985869aeaafe8beadaeaee11c4bc02068fca52dce28dd
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
