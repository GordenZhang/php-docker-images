FROM alpine:3.10

RUN echo -e "\nhttp://mirrors.ustc.edu.cn/alpine/v3.10/main\nhttp://mirrors.ustc.edu.cn/alpine/v3.10/community" > /etc/apk/repositories

RUN apk update && apk add php7 php7-json php7-phar php7-simplexml php7-xdebug php7-tokenizer php7-iconv php7-redis php7-pdo_mysql php7-gd php7-mbstring php7-bcmath php7-ctype php7-curl php7-dom php7-fileinfo php7-ftp php7-posix php7-sockets php7-sodium php7-pdo_sqlite php7-sqlite3 php7-xdebug php7-xml php7-xmlreader php7-xmlwriter php7-zip php7-mysqli php7-pcntl php7-soap php7-sysvmsg php7-sysvsem php7-sysvshm libstdc++

COPY docker-php-ext-custom.ini /usr/local/etc/php/conf.d/
COPY docker-php-entrypoint /

ENTRYPOINT ["sh", "/docker-php-entrypoint"]