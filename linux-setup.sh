#!/bin/bash

## Requirement 1 ##
# automate the process of provisioning a new linux virtual machine

## ubuntu update
sudo apt update
sudo apt -y upgrade
sudo apt install linuxbrew-wrapper -y
sudo apt-get install -y build-essential curl file git
    
## Installing Brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# to add Homebrew to your PATH and to your bash shell profile script, ~/.profile on Debian/Ubuntu 
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

## checking to see if brew is currently installed 
if [ -z $(which brew) ]; then 
    echo "brew is not currently installed"
    exit 1
fi

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

echo "RESTART YOUR VM"

exit 0