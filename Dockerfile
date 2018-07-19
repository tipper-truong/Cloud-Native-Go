FROM alpine:3.5
MAINTAINER Tipper Truong

COPY ./Cloud-Native-Go /app/Cloud-Native-Go
RUN chmod +x /app/Cloud-Native-Go

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT /app/Cloud-Native-Go

# FROM golang:1.7.4-alpine
# MAINTAINER Tipper Truong

# ENV SOURCES /go/src/github.com/tqtruong95/Cloud-Native-Go/

# COPY . ${SOURCES}

# RUN cd ${SOURCES} && CGO_ENABLED=0 go install

# ENV PORT 8080
# EXPOSE 8080

# ENTRYPOINT Cloud-Native-Go