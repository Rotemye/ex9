#!/bin/bash
#a
awk 'END {print NR}' aliceinwonderland.txt


#b
awk '{for (i=2; i<NF; i++) if ($i == "Alice") count++} END {print count}' aliceinwonderland.txt


#c
awk '{ for (i=1; i<=NF; i++) { if ($i ~ /^[a-zA-Z0-9]+$/) word[$i]++ }} END { for (w in word) if (word[w] == 1) print w }' aliceinwonderland.txt

#d
grep -o '\w\+' aliceinwonderland.txt | sort | uniq -c | sort -h | tail -5

#e
awk '{ for (i=1; i<=NF; i++) { total_length += length($i); word_count++;}} END { if (word_count > 0) print total_length / word_count}' aliceinwonderland.txt 

