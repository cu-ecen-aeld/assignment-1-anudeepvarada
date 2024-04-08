#!/bin/sh
#writer.sh
#to create a file and write the provided contents
#given location

writefile="$1"
writestr="$2"

if [ -z "$writefile" ] || [ -z "$writestr" ];
    then
    echo "one or both parameter not specified"
    exit 1
else 
X=$(grep -Rl "$writestr" "$writefile" | wc -l)
Y=$(grep -rnw "$writestr" "$writefile" | wc -l)
echo "The number of files are ${X} and the number of matching lines are ${Y}"
exit 0
fi