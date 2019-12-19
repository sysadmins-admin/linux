#!/bin/bash

for i in {1..254}      #(this is your variable in the IP range)
do     
  proxychains nc  -w1 -n -v -z 10.1.0.$i 20 21 22 23 80 2>&1 | grep open     #(this only scans for port 80, you can add to it)
done