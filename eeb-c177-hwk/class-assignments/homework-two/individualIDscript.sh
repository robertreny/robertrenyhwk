#script first cut first column of dataset to only individual ID
#use grep -c to get count, -w species full word match 
cut -f 1 Gesquiere2011_data.csv | grep -c -w $!

