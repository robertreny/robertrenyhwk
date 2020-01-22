# part-1-nobel hwk 

1. cut -d "," -f 3 nobel.csv | grep literature | wc -l 
chemistry:181
economics:81
literature:114
medicine:216
peace:133
physics:210


2 cut -d "," -f 5-6 nobel.csv | sort| tr -s "," " " | uniq -d. 
"Comité international de la Croix Rouge (International Committee of the Red Cross)" NA
"Frederick" "Sanger"
"John" "Bardeen"
"Linus Carl" "Pauling"
"Marie" "Curie
"Office of the United Nations High Commissioner for Refugees (UNHCR)" NA

3.  cut -d "," -f 6 nobel.csv | sort| tr -s "," " " | uniq -d -c | sort -n | tail -n 7
 
      3 "Lee"
      3 "Lewis"
      3 "Müller"
      4 "Fischer"
      4 "Wilson"
      5 "Smith"
     31 NA

4. medicine the most economics the least
