#!/bin/bash
filename="$1"
while read line
do
uniprot="$line"
#echo "reading :$line"
grep $line --after-context=1  /home/valerie/familias_reconstruccion/uniprot_trembl.fasta  >> $filename.names.fa
done <"$filename"



