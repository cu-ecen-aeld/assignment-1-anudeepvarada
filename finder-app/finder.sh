#!/bin/sh
#finder.sh
#to search a given string under a 
#given location

filesdir="$1"
searchstr="$2"

if [ -z "$filesdir" ] || [ -z "$searchstr" ];
    then
    echo "one or both parameter not specified"
    exit 1
elif [ ! -d "$filesdir" ];
    then
    echo "provided path doesn't exist"
    exit 1
else 
X=$(grep -Rl "$searchstr" "$filesdir" | wc -l)
Y=$(grep -rnw "$searchstr" "$filesdir" | wc -l)
echo "The number of files are ${X} and the number of matching lines are ${Y}"
exit 0
fi