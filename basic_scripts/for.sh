#! /bin/bash

#for var in list
#do
#команды
#done

for var in first second third fourth fifth
do
echo The  $var item
done
######################################################

for var in first "the second" "the third" "I’ll do it"
do
echo "This is: $var"
done
######################################################

file="myfile"
for var in $(cat $file)
do
echo " $var"
done
######################################################

file="/etc/passwd"
IFS=$'\n'
for var in $(cat $file)
do
echo " $var"
done

######################################################

for file in /home/likegeeks/*
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
fi
done

######################################################

for (( i=1; i <= 10; i++ ))
do
echo "number is $i"
done

######################################################

var1=5
while [ $var1 -gt 0 ]
do
echo $var1
var1=$[ $var1 - 1 ]
done

######################################################

for (( a = 1; a <= 3; a++ ))
do
echo "Start $a:"
for (( b = 1; b <= 3; b++ ))
do
echo " Inner loop: $b"
done
done

######################################################

IFS=$'\n'
for entry in $(cat /etc/passwd)
do
echo "Values in $entry –"
IFS=:
for value in $entry
do
echo " $value"
done
done

######################################################

for var1 in 1 2 3 4 5 6 7 8 9 10
do
if [ $var1 -eq 5 ]
then
break
fi
echo "Number: $var1"
done

######################################################

for (( var1 = 1; var1 < 15; var1++ ))
do
if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
then
continue
fi
echo "Iteration number: $var1"
done

######################################################

for (( a = 1; a < 10; a++ ))
do
echo "Number is $a"
done > myfile.txt
echo "finished."

######################################################

IFS=:
for folder in $PATH
do
echo "$folder:"
for file in $folder/*
do
if [ -x $file ]
then
echo " $file"
fi
done
done

