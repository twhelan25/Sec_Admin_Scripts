#!/bin/bash

read -s -p "Please create your password. Your password should use a combination of uppercase and lowercase letters, numbers, and special characters. Please input your password: " password
echo # Move to new line after password input

if [[ ${#password} -ge 8 && "$password" =~ [A-Z] && "$password" =~ [a-z] && "$password" =~ [0-9] && "$password" =~ [!@#$%^&*()_+={}:;|<>,.?/-] ]]; then
	echo "Your password is strong!"
else
	echo "Your password is weak! Try using a combination of uppercase and lowercase letters, numbers, and special characters."
fi
