#!/bin/bash
# Reference: https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-bandwidth-testing?tabs=linux

# Install
sudo apt-get update
sudo apt-get -y install build-essential
sudo apt-get -y install git
git clone https://github.com/Microsoft/ntttcp-for-linux
cd ntttcp-for-linux/src
sudo make && sudo make install


