FROM ubuntu:16.04

MAINTAINER eedkevin "eedkevin@gmail.com"

COPY install.sh install.sh
RUN chmod +x install.sh && sync && ./install.sh && rm install.sh

VOLUME /gen
WORKDIR /gen
CMD bash
