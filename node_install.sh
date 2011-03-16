#!/bin/sh
git clone --depth 1 https://github.com/joyent/node.git && cd node
./configure
make
sudo make install