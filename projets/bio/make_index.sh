#!/bin/bash
INPUT_FILE=$1
OUTPUT_FILE=index.md

#paste header
cat _index_header > $OUTPUT_FILE
#remove yaml, remove pagebreak, change \ to <br>
sed '1{/^---$/!q;};1,/^---$/d' $INPUT_FILE | sed 's/\\pagebreak/ /' | sed 's/\\/<br>/'>> $OUTPUT_FILE
