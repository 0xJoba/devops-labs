#!/bin/bash

name=$1
compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good Morning $name"
 sleep 2
 echo "You're looking good today $name!!"
 sleep 3
echo "I love your eyes $compliment ! $name"
sleep 2
echo "You are currently logged in as $user and you are in the $whereami.Also $name today's date is $date"
