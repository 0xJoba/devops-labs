#!/bin/bash

# This is my first Bash script
echo "Hello, World!"
echo "Today is $(date)"
echo "You are logged in as: $(whoami)"



# Declaring variables (NO spaces around =)
name="JayBee"
age=28
city="Lagos"

# Accessing variables with $ prefix
echo "Name: $name"
echo "Age: $age"
echo "City: $city"

# Using curly braces for clarity
echo "Hello, ${name}! Welcome to ${city}."

current_date=$(date +%Y-%m-%d)
file_count=$(ls -1 | wc -l)
my_ip=$(hostname -I | awk '{print $1}')

echo "Date: $current_date"
echo "Files in this directory: $file_count"
echo "My IP address: $my_ip"

# Basic input
read -p "Enter your name: " username
echo "Hello, $username!"

sleep 2
read -p "Enter your wish: " wish
echo "$wish, GRANTED!!"

# Silent input (for passwords)
read -sp "Enter password: " password
echo  # Print a newline after hidden input
echo "Password received (${#password} characters)."

read -sp "Confirm Password: " password
echo "Final Password Recieved!" 
# Input with a timeout (5 seconds)
read -t 5 -p "Quick! Enter a number: " num

# Input with a default value
read -p "Enter environment [production]: " env
env=${env:-production}    # Use "production" if empty
echo "Deploying to: $env"

sleep 2

read -p "Enter a number: " num

if [[ $num -gt 100 ]] ;then
echo "Number is >100"
elif [[ $num -gt 51 ]] ;then
echo "Number is between 51 and 100"
elif [[ $num -gt 0 ]]; then
echo "Number is < than 50"
else
echo "Number is Zero or Negative"
fi
