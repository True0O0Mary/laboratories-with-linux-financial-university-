#!/usr/bin/bash
IFS='/n'
echo "<html>" >>index.html
	 
echo "<title> Process statistic </title>" >>index.html

echo "<body>" >>index.html
echo "<h1>Distribution of processes</h1>" >>index.html

for file in *.html
do
echo $file >>index.html
echo "<hr noshade>" >>index.html
filename=${file%.*}
echo $filename.total  >>index.html
done
echo "</body>" >>index.html
echo "</html>" >>index.html
