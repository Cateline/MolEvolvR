#!/bin/bash
# Script to split a multi-fasta file to individual fasta files
# Expected user input: full FILEPATH to multi-fasta file
# Authors: Karn Jongnarangsin, Lauren Sosinski, Janani Ravi


FASTA=$1

cat $FASTA | awk '{
        if (substr($0, 1, 1)==">") {filename=(sed 's/^>//' | cut -d ' ' -f 1 ".fa")}
        print $0 > filename
}'

#cat ${FASTA} | sed 's/^>//' | cut -d ' ' -f 1

# sh ./detox01.0.2/detox -v .

# cat $FASTA | awk '{

#        if (substr($0, 1, 1)==">") {
#	  s=(substr($0,2) | cut -d " " -f1 )
#	  filename=(s ".fa") }
#	print p >> FASTA ".input.txt"
#	print $0 > filename

#}'

# print filename > $(FASTA).input.txt ;
# pwd > ${FASTA}.input.txt

## look for all files in directory that end with .fa, append them to text file
# grep -wlf *.fa >> input.txt

## for loop from https://stackoverflow.com/questions/2709458/how-to-replace-spaces-in-file-names-using-a-bash-script
## renaming files -- replace all spaces in file names with underscores
# for f in *\ *; do mv "$f" "${f// /_}"; done

# awk '{print $1;}'