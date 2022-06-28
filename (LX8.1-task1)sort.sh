#!/bin/bash
IFS=$'\n'
for string in $(cat $"/tmp/tim/sorted.ps")
do
name=`echo ${string} | awk '{print $1}'`
touch  /tmp/tim/$name.html
echo "<li> $string" >>$name.html
echo `wc -c $name.html` >$name.total
done
