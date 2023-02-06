#!/usr/bin/env bash

apt-get -q update
apt-get -q install -y xvfb
wget -q https://raw.githubusercontent.com/ldmirl/llp131-practicals/master/xvfb -O ../xvfb
