#!/bin/bash
#Will Christie

#GradesAwk.sh will read input from data file of following form.
#IDNumber FirstName LastName Grade1 Grade2 Grade3
#Grades.sh then calculates average of 3 grades, sorts ouput by last name, first name
#presents final output in following format.
#Average [IDNumber] LastName, FirstName

#Usage message to ensure GradesAwk.sh is called with filename. 
if [ $# = 0 ]
then
        echo "Usage: GradesAwk.sh filename"
        exit 1
fi

FILE=$1

#Sort File based on last name, first name, ID. 
sort -k3,3 -k2,2 -k1,1 $FILE -o $FILE

#Format output using awk: cast output to int to match bash
awk '{print int(($4+$5+$6)/3) " [" $1 "] " $3 ", "  $2}' $FILE
