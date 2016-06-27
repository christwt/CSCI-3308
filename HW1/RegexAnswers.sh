#!/bin/bash
#Will Christie

#RegexAnswers.sh will read from the file "Regex Practic Data" 
#Each line of the file corresponds to questions 1-12 from the homework
#check for word boundaries '/b', use grep and egrep, pipe to "wc-l" for counts

#Usage message to ensure Regex.sh is called with a filename. 
if [ $# = 0 ]
then 
	echo "Usage: RegexAnswers.sh filename"
	exit 1
fi

FILE=$1

#answers to questions coded below
#1. how many lines end with a number?
egrep [0-9]$ $FILE |wc -l
#2. how many line do not start with a vowel?
egrep ^[^aeiouAEIOU] $FILE |wc -l
#3. how any 12 letter (alphabet only) lines?
egrep ^[a-zA-Z]{12}$ $FILE |wc -l
#4. how many phone number are in the dataset?
egrep [0-9]{3}-[0-9]{3}-[0-9]{4} $FILE |wc -l
#5. how many city of Boulder phone numbers?
egrep 303-441-[0-9]{4} $FILE |wc -l
#6. how many begin with vowel and end with number?
egrep ^[aeiouAEIOU].+[0-9]$ $FILE |wc -l
#7. how many emails end in geocities.com?
egrep .+@geocities.com$ $FILE |wc -l
#8. how many emails are incorrectly formatted?
# search file for @ in line. pipe to egrep for properly formatted regex
# and utilize -v option to return the opposite (ie #incorrect emails).
egrep @ $FILE | egrep -v .+@.+[\.][a-zA-Z0-9\-]+ |wc -l

