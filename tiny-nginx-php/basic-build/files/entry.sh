#!/bin/sh

php-fpm7 -DOR && nginx -g "daemon off;"
