FROM alpine:latest
LABEL MAINTAINER="https://github.com/RuchinHimasha/TechRuchin"
WORKDIR /TechRuchin/
ADD . /TechRuchin
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./TechRuchin.sh"
