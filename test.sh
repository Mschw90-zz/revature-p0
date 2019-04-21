#!/bin/bash

create()
{
    role=$1
    if [ $role = "create" ] || [ $role = "bob" ]; then
        echo "we did it"
    fi
}

command=$1
$command $2