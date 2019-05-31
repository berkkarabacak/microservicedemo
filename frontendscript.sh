#!/bin/sh
export APP_PORT="1113"
export STATIC_URL="$0:8000"
export QUOTE_SERVICE_URL="$1:1111"
export NEWSFEED_SERVICE_URL="$2:1112"
export NEWSFEED_SERVICE_TOKEN='T1&eWbYXNWG1w1^YGKDPxAWJ@^et^&kX'
sudo apt-get install leiningen -y
sudo apt-get install build-essential -y
make libs
make clean all
cd build
printenv
nohup java -jar front-end.jar &  >> log.txt  