#!/usr/bin/bash
IFS=$'\n'
for string in $(cat $"/tmp/tim/log.txt")
do
str=$string
host=`echo $str | cut -d " " -f 1`
times=`echo $str | cut -d "[" -f 2 | cut -d "]" -f 1`
request=`echo $str | cut -d "\"" -f 2 |  cut -d "\"" -f 1`
type=`echo $request | awk '{print $1}'`
host_link=`echo $request | awk '{print $2}'`
protocol=`echo $request | awk '{print $3}'`
code=`echo $str | cut -d "\"" -f 3 |  cut -d "\"" -f 2`
answer_code=`echo $code | awk '{print $1}'`
bite=`echo $code | awk '{print $2}'`
link_site=`echo $str | cut -d "\"" -f 4 |  cut -d "\"" -f 3`
	 
client_info=`echo $str | cut -d "\"" -f 6 |  cut -d "\"" -f 5`
program=`echo $client_info | awk '{print $1}'`
os=`echo $client_info | awk '{print $3}' | cut -d ";" -f 2 | cut -d ";" -f 1`
	
echo "$times from $host according to the protocol $protocol request was executed type $type to ge>
	
done
	
	

