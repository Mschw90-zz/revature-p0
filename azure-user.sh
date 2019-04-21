#!/bin/bash

username=$1
password=$2
whichFunction=$3

# login to the admin
az login -u $username -p $password

# if $whichFunction is create it will run this conditional 
if [ $whichFunction = "create" ]; then
    userdisplayname=$4
    DOMAIN=mschw90gmail.onmicrosoft.com
    userprincipalname=$userdisplayname@$DOMAIN
    random=Thereisnopassword123!
    usersubscription=$5

    # creates a new user if the user doesnt already exist 
    result=$(az ad user list --query [].userPrincipalName | grep -E /$userdisplayname/)

    if [ -z result ]; then
        az ad user create \
        --display-name $userdisplayname \
        --user-principal-name $userprincipalname \
        --force-change-password-next-login \
        --password $random \
        --subscription $usersubscription
    fi
fi

if [ $whichFunction = "assign" ]; then
    echo "what am I"
fi

if [ $whichFunction = "delete" ]; then
    echo "bye"
fi


exit 0




cutePuppies()
{
    
}