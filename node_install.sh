#!/bin/sh

# Step 1: choose where to put node.
# We choose to put it in /opt 

mkdir -p /opt/node
cd /opt/node


# Step 2: download node.
#
# To get node master branch, which may be of alpha/beta quality:
#   git clone --depth 1 https://github.com/joyent/node.git && cd node
#
# To download a particular version of node as a file:
#   wget http://nodejs.org/dist/v0.5.9/node-v0.5.9.tar.gz

wget http://nodejs.org/dist/v0.5.9/node-v0.5.9.tar.gz
tar -zxvf node-v0.5.9.tar.gz
cd node-v0.5.9.tar.gz

# Step 3. build node.

./configure
make
make test
make install
make doc
