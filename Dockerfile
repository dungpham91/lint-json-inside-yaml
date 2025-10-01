# python:3.12.1
FROM python@sha256:081e7d0f7e520a653648602d10dcf11a832c8480b98698795d5fe8f456bbba4d
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
