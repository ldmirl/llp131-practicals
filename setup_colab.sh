#!/usr/bin/env bash

apt-get -qq update
apt-get -qq install -y xvfb
wget -q https://raw.githubusercontent.com/lulmil/llp131-practicals/master/xvfb -O ../xvfb
