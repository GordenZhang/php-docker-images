FROM gordenzhang/tiny-php:latest

COPY modules/swoole.so /usr/lib/php7/modules/
RUN echo "extension=swoole.so" > /etc/php7/conf.d/20_swoole.ini

ENTRYPOINT ["sh", "/docker-php-entrypoint"]