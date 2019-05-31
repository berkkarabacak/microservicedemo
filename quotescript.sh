#!/bin/sh
sudo apt-get install leiningen -y
sudo apt-get install build-essential -y
make libs
make clean all
cd build
export APP_PORT="1111"
echo "QUOTE QUOTE QUOTE "
nohup java -jar quotes.jar &> output.log &