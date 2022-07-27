#!/bin/bash


echo 'Begin to run on the hosts'
count=1
counter="$(cat $1 | wc -l)"
echo "in file $counter strings"
for word in $(cat $1)
do
echo -ne "check multiqueue: $count/$counter $word \r"
ssh -T centos@$word << EOF
ethtool -l eth0 | grep Combined | sort -u
EOF
count=$((count+1))
done
echo 'End run to the host'