# 3.12.0rc3-alpine3.18
FROM python@sha256:47aa8d113595a45c336252f32d6833677e209efcea3eeeefa989d068f043f42f
LABEL Maintainer="dungpham91"
WORKDIR /usr/app/src
COPY main.py ./
CMD [ "python", "./main.py"]
