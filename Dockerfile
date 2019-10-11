FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

RUN apt install apache2 -y

COPY index.html /var/www/html

WORKDIR /usr/sbin/

CMD ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80
