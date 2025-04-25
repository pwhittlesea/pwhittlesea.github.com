#!/usr/bin/env bash

set +e

# Find all images in the assets/images directory that are not in the assets/images/maps directory
# If we find any images that are not referenced in a markdown file or a Jekyll data file, exit with a non-0 status
exit_code=0
for i in `find assets/images/ -type f -not -path "assets/images/maps/*"`; do
    if ! grep -R "$i" . --include="*.md" --include="*.yml" --include="*.markdown" --include="*.yaml"  --include="*.html" -q; then
        echo "Not Found: $i" >&2
        exit_code=1
    fi
done

exit $exit_code
