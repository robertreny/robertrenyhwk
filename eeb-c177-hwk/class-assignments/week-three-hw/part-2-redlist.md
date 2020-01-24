#1 

cut -d "," -f 10 European_Red_List.csv | tail -n +2 | sort | uniq -c
    456 CR
      8 CR (PE)
   2409 DD
    687 EN
      4 EW
     29 EX
   5805 LC
    411 NA
      4 NE
    964 NT
      8 RE
    885 VU
#2 
grep AVES European_Red_List.csv | cut -d "," -f 10 | sort | uniq -c

     10 CR
     18 EN
      2 EX
    428 LC
     32 NT
      4 RE
     39 VU
#3 

ACCIPITRIFORMES
ANSERIFORMES
BUCEROTIFORMES
CAPRIMULGIFORMES
CHARADRIIFORMES
CICONIIFORMES
COLUMBIFORMES
CORACIIFORMES
CUCULIFORMES
FALCONIFORMES
GALLIFORMES
GAVIIFORMES
GRUIFORMES
OTIDIFORMES
PASSERIFORMES
PELECANIFORMES
PHOENICOPTERIFORMES
PICIFORMES
PODICIPEDIFORMES
PROCELLARIIFORMES
PTEROCLIFORMES
STRIGIFORMES
SULIFORMES

grep AVES European_Red_List.csv | tail -n +2 | grep ACCIPITRIFORMES | cut -d "," -f 10 | grep -c 'EX\|RE\|CE'
this works to go order by order but I want to do a loop command using the list of orders. 
I've tried along the line of making a variable $list equal to all of the orders then doing: for var in $list do grep $var done.  

grep AVES European_Red_List.csv | grep -E -v 'EN|VU|NT|LC|DD|NA' | cut -d "," -f 5,10 | sort -t "," -k 10 | uniq -c
      1 ACCIPITRIFORMES,CR
      3 CHARADRIIFORMES,CR
      1 CHARADRIIFORMES,EX
      1 CHARADRIIFORMES,RE
      1 OTIDIFORMES,CR
      3 PASSERIFORMES,CR
      1 PASSERIFORMES,RE
      1 PELECANIFORMES,RE
      1 PROCELLARIIFORMES,CR
      1 STRIGIFORMES,CR
      1 SULIFORMES,RE

