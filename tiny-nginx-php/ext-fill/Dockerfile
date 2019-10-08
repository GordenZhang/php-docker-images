FROM gordenzhang/tiny-nginx-php:basic

COPY modules/runkit7.so /usr/lib/php7/modules/
RUN echo "extension=runkit7.so" > /etc/php7/conf.d/20_runkit.ini

COPY modules/swoole.so /usr/lib/php7/modules/
RUN echo "extension=swoole.so" > /etc/php7/conf.d/20_swoole.ini

COPY modules/mongodb.so /usr/lib/php7/modules/
RUN echo "extension=mongodb.so" > /etc/php7/conf.d/20_mongodb.ini

COPY modules/rdkafka.so /usr/lib/php7/modules/
RUN echo "extension=rdkafka.so" > /etc/php7/conf.d/20_rdkafka.ini

EXPOSE 9000
STOPSIGNAL SIGTERM
CMD ["sh", "/entry.sh"]