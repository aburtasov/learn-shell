#! /bin/bash

#name="Andrey"
#name=$1
#compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "What is your name?"

read name

echo "Good Morning $name!!!"

sleep 1

echo "You're looking good today $name"

echo "You are currently logged in as $user and you are in the directory $whereami. Also today is: $date"


