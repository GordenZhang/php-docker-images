CurrentDir="$( cd "$( dirname "$0"  )" && pwd  )"

######################################################
# 在新的容器里构建php扩展
######################################################
cd $CurrentDir/ext-build/tmp

# swoole 扩展，版本: 4.4.7
git clone --branch v4.4.7 --depth=1 https://github.com/swoole/swoole-src.git
# cd swoole-src && git pull --depth=1 && cd .. || exit

cd .. && docker build -t gordenzhang/tiny-swoole:ext-builder .

######################################################
# 根据php扩展生成新的镜像
######################################################
cd $CurrentDir/ext-fill

docker run --rm -v `pwd`:/export gordenzhang/tiny-swoole:ext-builder cp -r /usr/lib/php7/modules/ /export
docker build -t gordenzhang/tiny-swoole:latest .
rm -rf modules

