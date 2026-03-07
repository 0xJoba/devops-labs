#!/bin/bash

echo "You Lived!"

#First beast battle

beast=$(( $RANDOM % 2 ))
echo "Your first beast approaches . Pick a number between 0-1.(0/1)" 
read tarnished

if [[ $beast == $tarnished ]]; then

echo "Beast VANQUISHED!!!. Congratulations Fellow Tarnished!"
else
echo "You Lived!"
exit 1

fi 

sleep 2
beast=$(( $RANDOM % 10 ))

echo "Boss battle , get scared .It's Margiut .Pick a number between 0-9.(0/9)" 
read tarnished
if [[ $beast == $tarnished ]]; then

echo "Beast VANQUISHED!!!. Congratulations Fellow Tarnish!"
else
echo "You Lived!"
fi
