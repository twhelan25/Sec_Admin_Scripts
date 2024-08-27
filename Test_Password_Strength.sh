#!/bin/sh

read -s -p "Please create your password. Your password should use a combination of uppercase and lowercase letters, numbers, and special characters. Please input your password: " password
if [[ $password =~ ^[A-Za-z0-9!@\#$%^&*()_+={}:;|<>,.?/-]{8,}$ ]]; then
  echo "Your password is strong!"
else
  echo "Your password is weak! Try using a combination of uppercase and lowercase letters, numbers, and special characters."
fi
  
