#!/bin/bash

username=$1

admin=$(az role assignment list \
    --include-classic-administrators \
    --query "[?id=='NA(classic admins)'].principalName" | grep -E $username)

echo $admin

exit 0