FROM alpine:latest

WORKDIR /app

COPY . /app

RUN apk add --no-cache bash

CMD ["bash"]
