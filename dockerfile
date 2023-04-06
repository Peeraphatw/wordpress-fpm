FROM wordpress:php8.0-fpm-alpine

WORKDIR /var/www/html

COPY ./wordpress_uat/ .


COPY ./fpm-config/ /usr/local/etc/php-fpm.d

RUN chmod -R 777 /var/www/html

COPY ./php/upload.ini /usr/local/etc/php/conf.d/upload.ini

RUN wget -O /usr/local/bin/php-fpm-healthcheck \
https://raw.githubusercontent.com/renatomefi/php-fpm-healthcheck/master/php-fpm-healthcheck \
&& chmod +x /usr/local/bin/php-fpm-healthcheck



