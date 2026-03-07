#!/bin/bash

echo "Hi There!"
sleep 1
echo "What is your name?"
sleep 1
read name
echo "what is your age?"
read age

echo "Hello $name , you are $age years old" echo "$PWD,$SHELL,$USER,$HOSTNAME" 


getrich=$((( $RANDOM % 5 ) + $age ))

echo "$name, You will become a billioniare when you are $getrich years old"
