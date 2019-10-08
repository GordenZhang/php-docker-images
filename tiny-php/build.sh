CurrentDir="$( cd "$( dirname "$0"  )" && pwd  )"
cd $CurrentDir
docker build -t gordenzhang/tiny-php:latest .
