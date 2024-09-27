#!/usr/bin/env bash

set +e

python3 -m venv venv/
source ./venv/bin/activate
pip3 install py-staticmaps -q
python3 .generate_maps.py
