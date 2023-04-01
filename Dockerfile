FROM ubuntu:latest

LABEL maintainer="Maksim <s96513@pollub.edu.pl>"

RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2

COPY index.html /var/www/html/ 

EXPOSE 8080 

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]