#!/bin/bash
a=0
while [ $a -eq 0 ]
do
ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo OK   &&   a=2  && echo Opening Chrome  && /usr/bin/chromium --k$
done
echo $a

#Read the below comments for better understanding
#ping -->Packet Internet Groper , to check the nw connectivity bw host n server/host...it takes ip as ip or url  n sends
#data packet to the specified address with the mesage ping and get a response from the server/host this time is recorded which is called late$

#ping www.geeksforgeeks.org

# -q --> to get only the summaery abt the network

# -w --> to stop pinging after sometime

# -c --> to control the number of packets sent to the server

# -ip r --> to view route 

# grep --> serches file pattern,if yr looking for a specific pattern in the op of another cmnd,grep highlights relevant lines

# cut -d -->  cmnd line utilty that allows u to cut part of lines from specified files or pipied data
# and print the result to std op
#-d (--delimiter) specify a delimiter that will be used instead of the default tab delimeter

#-f force

