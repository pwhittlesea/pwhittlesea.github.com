#!/usr/bin/env bash

set +e

YEAR=$(date +"%Y")
NAME=$(git config user.name)
COPYRIGHT="© ${YEAR} ${NAME} - All Rights Reserved."

# List of paths to skip
# I don't own these images so I don't want to set the copyright as mine
SKIP_PATHS=(
  "assets/images/2025-03-28-the-beautiful-world-of-walter-mitty/header.jpg"
  "assets/images/2025-03-28-the-beautiful-world-of-walter-mitty/the_secret_life_of_walter_mitty_1.jpg"
  "assets/images/2025-03-28-the-beautiful-world-of-walter-mitty/the_secret_life_of_walter_mitty_2.jpg"
  "assets/images/2025-06-09-i-am-whittlesea-clark/success_kid.png"
  "assets/images/2025-06-09-i-am-whittlesea-clark/surprise.png"
  "assets/images/2025-06-15-long-live-the-lakehouse/iceberg-metadata.png"
)

for file in $@
do
  # Check if the file is in the skip list
  for skip in "${SKIP_PATHS[@]}"; do
    if [[ "$file" == "$skip" ]]; then
      echo "Skipping $file"
      continue 2
    fi
  done

  exiftool \
    -q \
    -all= \
    --icc_profile:all \
    -IPTC:CopyrightNotice="${COPYRIGHT}" \
    -IPTC:Credit="${NAME}" \
    -IPTC:By-line="${NAME}" \
    -copyright="${COPYRIGHT}" \
    -copyrightnotice="${COPYRIGHT}" \
    -credit="${NAME}" \
    -overwrite_original \
    ${file}
done
