FROM php:7.4-apache
RUN apt-get update && docker-php-ext-install mysqli
COPY . /var/www/html/
RUN sed -i 's/172.20.1.101/mysql-service/g' /var/www/html/index.php
EXPOSE 80
