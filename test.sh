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

function cat(a) {
    if(a !== 1 || a !== 2) {
        console.log("hi")
    }
}