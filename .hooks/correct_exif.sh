#!/usr/bin/env bash

set +e

YEAR=$(date +"%Y")
NAME=$(git config user.name)
COPYRIGHT="© ${YEAR} ${NAME} - All Rights Reserved."

for file in $@
do
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
