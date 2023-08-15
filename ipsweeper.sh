#!/bin/bash

subnet="xxx.xx.xx"

for i in {1--254};
do
    ip="$subnet.$i"
    if ping -c 1  -W 1 "$ip" &> /dev/null;
    then
        echo "Host is UP: $ip"
    else
        echo "Host is DOWN: $ip"
    fi
done



