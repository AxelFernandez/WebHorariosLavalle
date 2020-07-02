FROM php:7.1.5-apache
RUN apt update -y
RUN apt install git -y
RUN git clone -b production https://github.com/AxelFernandez/WebHorariosLavalle.git /var/www/html
RUN docker-php-ext-install mysqli
