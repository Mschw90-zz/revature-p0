#!/bin/bash


#check to see if node is currently installed if it isnt it will run the first script file ./linux-setup.sh
if [ -z "$(which node)" ]; then
   echo "you currently dont have node installed"
   exit 1
fi


start()
{   
    directory_name=$1

    if ! [ -d $directory_name ]; then
        echo "this is not a directory"
        exit 1
    fi

    cd $directory_name
    
    result=$(cat package.json | grep -E 'start')

    if ! [ -z "$result" ]; then 
        npm start
    fi
}

stop()
{
    directory_name=$1

    if ! [ -d $directory_name ]; then
        echo "this is not a directory"
        exit 1
    fi

    cd $directory_name
    
    result=$(cat package.json | grep -E 'stop')

    if ! [ -z "$result" ]; then 
        npm stop
    fi
}

command=$1

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