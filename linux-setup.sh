#!/bin/bash

sudo apt update
sudo apt -y upgrade
sudo apt install linuxbrew-wrapper -y
sudo apt-get install build-essential curl file git

# if [ -z $(which brew) ]; then 

    
    #brew install
    
    # echo "Installing Brew"
    sudo apt-get install -y build-essential curl file git
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
    test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
    echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
# else 
    #bew update
    # echo "Updating brew"
    # brew upgrade
    # echo "brew updated"
# fi

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

echo "RESTART YOUR VM"

exit 0