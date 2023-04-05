FROM wordpress:php8.0-fpm-alpine

WORKDIR /var/www/html

COPY ./wordpress_uat/ .

RUN chmod -R 777 /var/www/html

COPY ./php/upload.ini /usr/local/etc/php/conf.d/upload.ini



