#!/bin/bash

read -p "Please provide your email address: " emailaddress
if [ -z "$emailaddress" ]; then
    echo "Error: Email address is required."
else
    if [[ $emailaddress =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
        echo "Your email address is valid."
    else
        echo "Your email address is invalid. Your email address must contain a domain extension (e.g. '.com'), contain '@', and start with a valid character."
    fi
fi
