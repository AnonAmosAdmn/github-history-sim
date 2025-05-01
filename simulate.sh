#!/bin/bash

START_DATE="2021-01-01"
END_DATE="2025-05-01"
CURRENT_DATE="$START_DATE"

while [ "$CURRENT_DATE" != "$END_DATE" ]; do
    export GIT_AUTHOR_DATE="$CURRENT_DATE 12:00:00"
    export GIT_COMMITTER_DATE="$CURRENT_DATE 12:00:00"
    echo "$CURRENT_DATE" >> log.txt
    git add log.txt
    git commit -m "Simulated commit on $CURRENT_DATE"
    CURRENT_DATE=$(date -I -d "$CURRENT_DATE + 1 day")
done
