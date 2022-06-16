#! /bin/bash

echo "What is your name?"

read name 

echo "How old are you?"

read age

echo "Hello $name, you are $age years old."

#echo $SHELL, $PWD, $HOSTNAME, $USER

#echo $twitter

sleep 2

echo "Calculating"
echo "..........."
echo "**........."
echo "****......."
echo "******....."
echo "***********"

getrich=$((( $RANDOM % 15 ) + $age ))

echo "$name, you will become a millionare when you are $getrich years old."
