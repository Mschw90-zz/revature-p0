#!/bin/bash

# the name of the directory that you put as an argument
directory=$1

# the user.name and user.email used to do the git config to hook up your get repo to this directory
user_name=$2
user_email=$3


## verify git and node are installed
if [ -z "$(which git)" ] && [ -z "$(which node)" ]; then
    echo "the environment for this script is not set up yet"
    exit 1
fi



## checks to see if directory exist
if ! [ -d "$directory" ]; then
    mkdir $directory
fi

## checks to see if things are in the directory 
## -A means it shows all items in the directory
if [ -n "$(ls -A $directory)" ]; then
    echo "this directory is not empty"
    exit 1
fi

## directory strucker ## 
mkdir $directory/.docker

touch \
$directory/.docker/dockerfile \
$directory/.docker/dockerup.yaml

## github
mkdir \
$directory/.github/ISSUE_TEMPLATE \
$directory/.github/PULL_REQUEST_TEMPLATE

touch \
$directory/.github/ISSUE_TEMPLATE/issue-template.md \
$directory/.github/PULL_REQUEST_TEMPLATE/pull-request-template.md

touch \
$directory/.github/CODE-OF-CONDUCT.md \
$directory/.github/CONTRIBUTING.md

## root
mkdir \
$directory/client \
$directory/src \
$directory/test

touch \
$directory/client/.gitkeep \
$directory/src/.gitkeep \
$directory/test/.gitkeep

touch \
$directory/.azureup.yaml \
$directory/.dockerignore \
$directory/.editorconfig \
$directory/.gitignore \
$directory/.markdownlint.yaml \
$directory/CHANGELOG.md \
$directory/LICENSE.txt \
$directory/README.md

git init
git config $user_name
git config $user_email
npm init -y

exit 0