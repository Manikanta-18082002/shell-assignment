#!/bin/bash

#sed: Stream Editor
#^ : negation

#replaces any non-alphabetic characters in the file count.txt with spaces.
sed -e 's/[^[:alpha:]]/ /g' count.txt |

#replaces newline characters with spaces.
 tr '\n' " " | 
 
#squeezes multiple consecutive spaces into a single space.
  tr -s " " |
  
#replaces spaces with newline characters, effectively separating words onto different lines.
   tr " " '\n'| 
   
#converts uppercase letters to lowercase.
   tr 'A-Z' 'a-z' |  

#sorts the words alphabetically,| counts the occurrences of each word, | sorts them in desc order of frequency,| number the lines,
    sort | uniq -c | sort -nr | nl | head -n 5




