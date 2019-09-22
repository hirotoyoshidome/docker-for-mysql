FROM mysql:8.0.17

WORKDIR /usr/src

RUN apt-get update
RUN apt-get install vim
