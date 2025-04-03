#!/bin/bash
GITHUB_USER=$GITHUB_ACTOR
echo "Current Date and Time: $(TZ=Asia/Manila date '+%a %b %d, %Y %H:%M:%S') - Logged by: $GITHUB_USER" >> log.txt

COUNT=$(grep -c '^Current' log.txt)

sed -i '$ d' log.txt 
echo "Total logs recorded: $COUNT" >> log.txt