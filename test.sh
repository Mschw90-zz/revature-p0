#!/bin/bash

if [ -n $(which git) ]; then 
    ./test1.sh
else 
    echo "sad sad"
fi

exit 0