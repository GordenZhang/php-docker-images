FROM gordenzhang/tiny-nginx-php:basic

RUN apk add php7-dev gcc autoconf coreutils make openssl openssl-dev pcre-dev g++ python linux-headers libltdl libstdc++ librdkafka-dev

COPY tmp /phpExt
RUN cd /phpExt/runkit7 && phpize && ./configure && make && make install && echo "extension=runkit7.so" >> /etc/php7/php.ini
RUN cd /phpExt/swoole-src && phpize && ./configure && make && make install && echo "extension=swoole.so" >> /etc/php7/php.ini
RUN cd /phpExt/mongo-php-driver && phpize && ./configure && make && make install && echo "extension=mongodb.so" >> /etc/php7/php.ini
RUN cd /phpExt/php-rdkafka && phpize && ./configure && make && make install && echo "extension=rdkafka.so" >> /etc/php7/php.ini
RUN php -m