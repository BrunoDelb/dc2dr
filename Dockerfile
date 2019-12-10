FROM python:3.7.4-alpine3.10
LABEL maintainer="brunodelb@gmail.com"

RUN apk add --update make

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN make install
ENTRYPOINT ["python", "./dc2dr/cli.py"]

