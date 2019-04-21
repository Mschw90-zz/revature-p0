#!/bin/bash

username=$1
password=$2

 # login to the admin
az login -u $username -p $password

admin=$(az role assignment list \
    --include-classic-administrators \
    --query "[?id=='NA(classic admins)'].principalName" | grep -E $username)

echo $admin

if ! [ -z $admin ]; then 
    whichFunction=$3

    # if $whichFunction is create it will run this conditional 
    if [ $whichFunction = "create" ]; then
        echo "im going to create a user"
        userdisplayname=$4
        DOMAIN=mschw90gmail.onmicrosoft.com
        userprincipalname=$userdisplayname@$DOMAIN
        random=Thereisnopassword123!
        usersubscription=$5

        # creates a new user if the user doesnt already exist 
        result=$(az ad user list --query [].userPrincipalName | grep -E /$userdisplayname/)

        if [ -n $result ]; then
            az ad user create \
            --display-name $userdisplayname \
            --user-principal-name $userprincipalname \
            --force-change-password-next-login \
            --password $random \
            --subscription $usersubscription
        fi
    fi

    # if [ $(whichFunction) = "assign" ]; then
    #     echo "what am I"
    # fi

    # if [ $(whichFunction) = "delete" ]; then
    #     echo "bye"
    # fi

else 

    echo "you must be an admin to access this file"

    exit 1

fi

exit 0