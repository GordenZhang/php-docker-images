# Quick start
Docker-hub address: https://hub.docker.com/r/gordenzhang/

    # tiny-php
    docker run --rm -v `pwd`:/app -w /app gordenzhang/tiny-php:latest php -v
    
    # tiny-swoole
    docker run --rm -v `pwd`:/app -w /app gordenzhang/tiny-swoole:latest php -v
    
    # tiny-nginx-php:basic
    docker run --rm -v `pwd`:/app -w /app gordenzhang/tiny-nginx-php:basic php -v
    
    # tiny-nginx-php-:latest
    docker run --rm -v `pwd`:/app -w /app gordenzhang/tiny-nginx-php:latest php -v

# Features
* small storage/transfer size:  
    * php: `~13.5MB`
    * php + nginx: `~18.5MB`
    * php + swoole: `~21MB`
    * php + nginx + many-exts: `~27MB`
* rich php extesions

# Content
## Main contents

Content|Version|tiny-php|tiny-swoole|tiny-nginx-php:basic|tiny-nginx-php:latest
-|-|-|-|-|-
php|7.3.10|✅|✅|✅|✅
php-fpm|7.3.10|❌|❌|✅|✅
nginx|1.16.1|❌|❌|✅|✅
php-ext: swoole|4.4.6|❌|✅|❌|✅
php-ext: mongodb|1.6.0|❌|❌|❌|✅
php-ext: rdkafka|4.0.0|❌|❌|❌|✅
php-ext: runkit7|3.0.0|❌|❌|❌|✅

## Other PHP extensions(included in all images)
bcmath
Core
ctype
curl
date
dom
fileinfo
filter
ftp
gd
hash
iconv
igbinary
json
libxml
`mbstring`
mysqli
`mysqlnd`
`openssl`
`pcntl`
pcre
PDO
pdo_mysql
pdo_sqlite
`Phar`
posix
readline
`redis`
Reflection
session
`SimpleXML`
soap
sockets
sodium
SPL
sqlite3
standard
sysvmsg
sysvsem
sysvshm
tokenizer
xml
xmlreader
xmlwriter
zip
zlib
