#!/bin/bash


if [ -n $(which git) ]; then
    git init
    npm init -y

    mkdir repo/.docker

    touch \
    repo/.docker/dockerfile \
    repo/.docker/dockerup.yaml

    ## github
    mkdir \
    repo/.github/ISSUE_TEMPLATE \
    repo/.github/PULL_REQUEST_TEMPLATE

    touch \
    repo/.github/ISSUE_TEMPLATE/issue-template.md \
    repo/.github/PULL_REQUEST_TEMPLATE/pull-request-template.md

    touch \
    repo/.github/CODE-OF-CONDUCT.md \
    repo/.github/CONTRIBUTING.md

    ## root
    mkdir \
    repo/client \
    repo/src \
    repo/test

    touch \
    repo/client/.gitkeep \
    repo/src/.gitkeep \
    repo/test/.gitkeep

    touch \
    repo/.azureup.yaml \
    repo/.dockerignore \
    repo/.editorconfig \
    repo/.gitignore \
    repo/.markdownlint.yaml \
    repo/CHANGELOG.md \
    repo/LICENSE.txt \
    repo/README.md
else 
    ./linux-setup.sh

    git init
    npm init -y

    mkdir repo/.docker

    touch \
    repo/.docker/dockerfile \
    repo/.docker/dockerup.yaml

    ## github
    mkdir \
    repo/.github/ISSUE_TEMPLATE \
    repo/.github/PULL_REQUEST_TEMPLATE

    touch \
    repo/.github/ISSUE_TEMPLATE/issue-template.md \
    repo/.github/PULL_REQUEST_TEMPLATE/pull-request-template.md

    touch \
    repo/.github/CODE-OF-CONDUCT.md \
    repo/.github/CONTRIBUTING.md

    ## root
    mkdir \
    repo/client \
    repo/src \
    repo/test

    touch \
    repo/client/.gitkeep \
    repo/src/.gitkeep \
    repo/test/.gitkeep

    touch \
    repo/.azureup.yaml \
    repo/.dockerignore \
    repo/.editorconfig \
    repo/.gitignore \
    repo/.markdownlint.yaml \
    repo/CHANGELOG.md \
    repo/LICENSE.txt \
    repo/README.md
fi

exit 0