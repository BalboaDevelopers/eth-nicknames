#!/bin/bash

set -x 

function install_utilities(){
    sudo apt-get install build-essential curl -y
    curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
}

function install_nodejs(){
    sudo apt-get install nodejs -y
}

function install_npm_dependencies(){
     sudo npm install -g truffle -y
}

function install_docker(){
    echo 'Installing docker ...'
    sudo add-apt-repository ppa:webupd8team/java -y
    sudo apt-get -y update
    sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key  fingerprint 0EBFCD88
    sudo add-apt-repository  -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get -y update
    sudo apt-get -y install docker-ce
    echo 'Finished docker install.'
}

function install_docker_compose(){
    echo 'Installing docker-compose...'
    sudo curl -L --fail https://github.com/docker/compose/releases/download/1.23.1/run.sh -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo 'Finished docker-compose install.'
}

echo '###################################'
echo 'Installation Started...'
echo '###################################'

install_utilities
install_nodejs
install_npm_dependencies
install_docker
install_docker_compose

echo '###################################'
echo 'Installation Complete.'
echo '###################################'