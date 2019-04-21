#!/bin/bash

sudo apt update
sudo apt -y upgrade

if [ -z $(which brew) ]; then 

    
    #brew install
    echo "Installing Brew"
    sudo apt-get install -y build-essential curl file git
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
    eval \$($(brew --prefix)/bin/brew shellenv)
    sudo apt install linuxbrew-wrapper -y
    echo "brew installed"
else 
    #bew update
    echo "Updating bre"
    brew upgrade
    echo "brew updated"
fi

if [ -n $(which brew) ]; then 
    #gcc istalling 
    echo "installing gcc"
    brew install gcc
    echo "gcc installed"
    
    #azure install
    echo "installing azure"
    brew install azure-cli
    echo "azure installed"

    #git install
    echo "installing git"
    brew install git
    echo "git installed"

    #node install
    echo "installing node"
    brew install node
    echo "node installed"
fi

exit 0