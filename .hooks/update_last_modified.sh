#!/bin/sh
# Replace `last_modified_at` timestamp with current time
# From https://mademistakes.com/notes/adding-last-modified-timestamps-with-git/

git diff --cached --name-status | egrep -i "^(A|M).*\.(md)$" | while read a b; do
  cat $b | sed "/---.*/,/---.*/s/^last_modified_at:.*$/last_modified_at: $(date -u --iso-8601=seconds)/" > tmp
  mv tmp $b
  git add $b
done
