FROM ubuntu:18.04
MAINTAINER Keunhak Lim <limkeunhak@gmail.com>

RUN apt-get update
RUN apt-get install -y nodejs npm

RUN mkdir -p /var/www

ADD ./app.js /var/www/app.js
ADD ./bin /var/www/bin
ADD ./package.json /var/www/package.json
ADD ./public /var/www/public
ADD ./routes /var/www/routes
ADD ./views /var/www/views

WORKDIR /var/www
RUN npm install

CMD node ./bin/www
