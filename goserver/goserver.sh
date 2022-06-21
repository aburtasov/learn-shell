#!/bin/bash

hostIp=$(host $1 | awk '{print $NF}')
myPort=${2:-22}
myUser=${3:-username}
echo $hostIp


ssh -t -i ~/.ssh/id_rsa $myUser@10.113.25.127 "sudo ssh -p $myPort username@"$hostIp 

