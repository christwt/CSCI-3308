#!/bin/bash
#Will Christie

#Grades.sh will read input from data file of following form. 
#IDNumber FirstName LastName Grade1 Grade2 Grade3
#Grades.sh then calculates average of 3 grades, sorts ouput by last name, first name
#presents final output in following format.
#Average [IDNumber] LastName, FirstName

#Progress: output is correct.

#Usage message to ensure Grades.sh is called with a filename. 
if [ $# = 0 ] 
then
	echo "Usage: Grades.sh filename"
	exit 1
fi

FILE=$1

#Sort File based on last name, first name, then ID
sort -k3,3 -k2,2 -k1,1 $FILE -o $FILE

#Read sorted file line by line and format output using expr. 
while read -a line;
do
	sum=`expr ${line[3]} + ${line[4]} + ${line[5]}`
	avg=`expr $sum / 3`
	echo "$avg [${line[0]}] ${line[2]}, ${line[1]}"
done < $FILE

