# python:3.12.1
FROM python@sha256:b0aed0e0059e9b1527ef57689a7206f32526627b0713e2228a916df62880188a
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
