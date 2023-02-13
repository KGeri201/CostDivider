FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --update --no-cache mysql mysql-client nodejs

WORKDIR /usr/src/app

COPY * . 

VOLUME ["/usr/src/app"]

#ENTRYPOINT ["/bin/sh"]

EXPOSE 8000/tcp