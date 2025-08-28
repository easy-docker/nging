#!/bin/sh
cd /home/nging_linux_amd64
./nging -p 9999 -c 'myconfig/config.yaml'
while true;do sleep 3600;done
