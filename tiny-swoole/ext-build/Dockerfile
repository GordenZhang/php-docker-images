FROM gordenzhang/tiny-php:latest

RUN apk add php7-dev gcc autoconf coreutils make openssl openssl-dev pcre-dev g++ python linux-headers libltdl librdkafka-dev

COPY tmp /phpExt
RUN cd /phpExt/swoole-src && phpize && ./configure && make && make install && echo "extension=swoole.so" >> /etc/php7/php.ini
RUN php -m