CurrentDir="$( cd "$( dirname "$0"  )" && pwd  )"

######################################################
# 构建基础容器
######################################################
cd $CurrentDir/basic-build 

docker build -t gordenzhang/tiny-nginx-php:basic .

######################################################
# 在新的容器里构建php扩展
######################################################
cd $CurrentDir/ext-build/tmp

# runkit 扩展，版本: 3.0.0
git clone --branch 3.0.0 --depth=1 https://github.com/runkit7/runkit7.git
# cd runkit7 && git pull --depth=1 && cd .. || exit
# swoole 扩展，版本: 4.4.6
git clone --branch v4.4.6 --depth=1 https://github.com/swoole/swoole-src.git
# cd swoole-src && git pull --depth=1 && cd .. || exit
# mongodb 扩展，版本1.6.0
git clone --branch 1.6.0 --depth=1 https://github.com/mongodb/mongo-php-driver.git
cd mongo-php-driver && git submodule sync && git submodule update --init &&  cd .. || exit
# kafka 扩展，版本4.0.0
git clone --branch 4.0.0 --depth=1 https://github.com/arnaud-lb/php-rdkafka.git
# cd php-rdkafka && git pull --depth=1 && cd .. || exit

cd .. && docker build -t gordenzhang/tiny-nginx-php:ext-builder .

######################################################
# 根据php扩展生成新的镜像
######################################################
cd $CurrentDir/ext-fill

docker run --rm -v `pwd`:/export gordenzhang/tiny-nginx-php:ext-builder cp -r /usr/lib/php7/modules/ /export
docker build -t gordenzhang/tiny-nginx-php:latest .
rm -rf modules

