#!/bin/bash


helpFunction()
{
   echo ""
   echo "Usage: $0 -f input file -o outputfile"
   echo -f "\t-f file with ip address"
   echo -e "\t-b Description of what is parameterB"
   echo -e "\t-c Description of what is parameterC"
   exit 1 # Exit script after printing help
}



> logs.txt



echo 'Begin to run on the hosts'
count=1
counter="$(cat $1 | wc -l)"
echo "in file $counter strings"
for word in $(cat $1)
do
  echo -ne "try get log from server: $count/$counter $word \r"
  ssh username@$word 'sudo tail -n 1000 /var/log/nginx/access.log' >> logs.txt
  count=$((count+1))
done
echo 'End run to the host'

cat logs.txt  | awk '{print $6" " $7" "$9" "$NF}' | sort | uniq -c | sort -nr | head -n 30

