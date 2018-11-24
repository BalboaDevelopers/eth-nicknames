#!/bin/bash

set -x 

function install_utilities(){
    sudo apt-get install curl -y
    curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
}

function install_nodejs(){
    sudo apt-get install nodejs -y
}

function install_truffle(){
    npm install -g truffle
}

echo '###################################'
echo 'Installation Started...'
echo '###################################'

install_utilities
install_nodejs
install_truffle

echo '###################################'
echo 'Installation Complete.'
echo '###################################'