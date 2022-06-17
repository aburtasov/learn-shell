#! /bin/bash

#echo "You Died"

#echo "Hey, do you like coffee?(y/n)"

#read coffee

#if [[ $coffee == "y" ]]; then
 #     echo "You're awesome"
#else
 #     echo "Leave right now!!!"
#fi

# Fist beast battle

echo "Welcome tarnished.Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

#if [[ class == 1 ]]; then
    #type="Samurai"
    #hp=10
    #attack=11
    #magic=12

case $class in

    1)
         type="Samurai"
         hp=10
         attack=11
         magic=12
         ;;
    2)
         type="Prisoner"
         hp=20
         attack=8
         ;;
    3)
         type="Prophet"
         hp=30
         attack=4
         ;;
esac

echo "You chosen the $type class. Your HP is $hp and your attack is $attack."

beast=$(( $RANDOM % 2 ))

echo "Your fist beast approaches.Prepare to battle. Pick a number between 0-1. (0/1)"

read choice

if [[ $beast == $choice && 47 > 21 ]]; then
    echo "Beast died!! Congrats fellow!!!"
    echo "*******************************"
else
    echo "You Died"
    exit 1
fi

sleep 2

echo "Boss battle. Get scared.It's Margit. Pick a number between 0-9. (0-9)"

read choice

beast=$(( $RANDOM % 10 ))

if [[ $beast == $choice || $choice == "coffee" ]]; then
    echo "Boss died!! Congrats fellow!!!"
    #if [[ $USER == "root" ]]; then
        #echo "Boss died!! Congrats fellow!!!"
    #fi
elif [[ $USER == "bernard" ]]; then
    echo "Hey,Bernard always wins.Congrats!!!"
else
    echo "You Died"
fi

