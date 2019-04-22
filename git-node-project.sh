#!/bin/bash

directory=$1

if ! [ -z $(which git) ] && ! [ -z $(which node) ]; then
    git init
    npm init -y

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

fi

exit 0