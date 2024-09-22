#!/bin/bash

curl -0  https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' file.tsv

tr '\t' ',' < cleaned_lab3-bundle.tsv > lab3-bundle.csv

lines_count=$(tail -n +2 cleaned_lab3-bundle.csv | wc -l)
echo "the number of lines are: $lines_count"

tar -czvf converted-archive.tar.gz lab3-bundle.csv

echo "converted tarball has been created"


