#!/bin/sh

# Step 1: choose where to put it.
# We choose to put it in /opt 

mkdir -p /opt/node
cd /opt/node


# Step 2: download node.
#
# To get the master branch, which may be of alpha/beta quality:
#   git clone --depth 1 https://github.com/joyent/node.git 
#
# To download a particular version as a file:
#   wget http://nodejs.org/dist/v0.5.9/node-v0.5.9.tar.gz

wget http://nodejs.org/dist/v0.5.9/node-v0.5.9.tar.gz
tar -zxvf node-v0.5.9.tar.gz
cd node-v0.5.9.tar.gz

# Step 3. build.

./configure
make
make test
make install
make doc
