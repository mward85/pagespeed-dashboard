#!/bin/bash
declare -a myarray

# Load file into array.
let i=0
for line in $(cat "./urls.txt"); do
    # printf "${line}\n"
    myarray[i]="${line}"
    echo "'${{ vars.GOOGLE_PAGESPEED_ENDPOINT }}?url=${line}&key=${{ secrets.GOOGLE_API_KEY }}' > ./scans/$(date +%F_%R)-COM.json"
    ((++i))
done