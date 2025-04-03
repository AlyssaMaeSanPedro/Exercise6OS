#!/bin/bash
GITHUB_USER=$GITHUB_ACTOR

echo "Current Date and Time: $(date '+%a %b %d, %Y %H:%M:%S') - Logged by: $GITHUB_USER" >> log.txt
COUNT=$(grep -c '^Current' log.txt)
# Be careful with sed -i as it can behave differently on different systems
# Let's use a more reliable approach
tail -n +1 log.txt | grep -v "Total logs recorded" > temp_log.txt
echo "Total logs recorded: $COUNT" >> temp_log.txt
mv temp_log.txt log.txt