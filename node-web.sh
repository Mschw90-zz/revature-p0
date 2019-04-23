#!/bin/bash


#check to see if node is currently installed
if [ -z "$(which node)" ]; then
   echo "you currently dont have node installed"
   exit 1
fi

## Start Function ##
start()
{   
    # the directory you are trying to access
    directory_name=$1

    # checks to see if the directory exist
    if ! [ -d $directory_name ]; then
        echo "this is not a directory"
        exit 1
    fi

    # cd into the directory you are trying to access
    cd $directory_name
    
    # allows you to view the inside of the package.json and then searches for the word start
    result=$(cat package.json | grep -E 'start')

    # checks to see if start was found, if it was it will run npm start
    if ! [ -z "$result" ]; then 
        npm start
    fi
}

stop()
{

    # the directory you are trying to access
    directory_name=$1

    # checks to see if the directory exist
    if ! [ -d $directory_name ]; then
        echo "this is not a directory"
        exit 1
    fi

    # cd into the directory you are trying to access
    cd $directory_name
    
    # allows you to view the inside of the package.json and then searches for the word stop
    result=$(cat package.json | grep -E 'stop')

    # checks to see if start was found, if it was it will run npm stop
    if ! [ -z "$result" ]; then 
        npm stop
    fi
}

# the command you want to call in the script, "start" or "stop"
command=$1

# the case checks to see if the command was called properly, if a call is made that isnt either "start" or "stop" it will echo an error
case $command in
    "start")
        start $2
    ;;
    "stop")
        stop $2
    ;;
    *)
        echo "must use either start or stop as your command"
        exit 1
    ;;

esac

exit 0