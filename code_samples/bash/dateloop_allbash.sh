#!/bin/bash 
current_date=2013-01-01
for i in {0..8}
do
   next_date=$(date -j -v +${i}d -f "%Y-%m-%d" "$current_date" +%Y-%m-%d)
   #next_date=$(date -d "$current_date +${i} day" +%Y-%m-%d)
   echo "$next_date"
done
