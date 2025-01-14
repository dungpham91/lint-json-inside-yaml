# python:3.12.1
FROM python@sha256:872a06ef09d6f897a81f2bbc0310cfba3ff5022f602cffc6bf161a0fbc773f34
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
