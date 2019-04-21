#!/bin/bash

start()
{
    filename=$1
    node filename

    if [ -z $(which node) ]
        echo "node is not installed yet"
        echo "installing "
    fi
}

stop()
{

}

command=$1
$command $2