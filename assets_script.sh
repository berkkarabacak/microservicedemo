#!/bin/sh
sudo apt-get install leiningen -y
sudo apt-get install build-essential -y
make libs
make clean all
echo "aSSETS aSSETS aSSETS aSSETS aSSETS"
cd front-end/public
python3 serve.py &