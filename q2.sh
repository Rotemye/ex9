#!/bin/bash
#a
sed -rn '/Sherlock|Holmes/p' sherlockholmes.txt | wc -l

#b
#Could not find a way to do it with sed that will be accurate without using grep, so I decid to do it with grep onlysince the use of sed here was not justify.
grep -o -E 'Sherlock|Holmes' sherlockholmes.txt | wc -l

#c
sed 's/^/Hello:/' sherlockholmes.txt

#d
sed -E 's/\b[A-Z][a-z]+\b/Rotem/g' sherlockholmes.txt

#e
sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt
