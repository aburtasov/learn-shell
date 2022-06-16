#!/bin/bash

hostIp=$(host $1 | awk '{print $NF}')
myPort=${2:-22}
myUser=${3:-centos}
echo $hostIp


ssh -t -i ~/.ssh/yarus/id_rsa $myUser@10.10.20.117 "sudo ssh -p $myPort centos@"$hostIp 

