#!/bin/bash


if [ -n $(which git) ]; then
    git init

    mkdir .docker

    touch \
    .docker/dockerfile \
    .docker/dockerup.yaml

    ## github
    mkdir -p \
    .github/ISSUE_TEMPLATE \
    .github/PULL_REQUEST_TEMPLATE

    touch \
    .github/ISSUE_TEMPLATE/issue-template.md \
    .github/PULL_REQUEST_TEMPLATE/pull-request-template.md

    touch \
    .github/CODE-OF-CONDUCT.md \
    .github/CONTRIBUTING.md

    ## root
    mkdir \
    client \
    src \
    test

    touch \
    client/.gitkeep \
    src/.gitkeep \
    test/.gitkeep

    touch \
    .azureup.yaml \
    .dockerignore \
    .editorconfig \
    .gitignore \
    .markdownlint.yaml \
    CHANGELOG.md \
    LICENSE.txt \
    README.md
else 
    ./linux-setup.sh