#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./run_python.sh script.py"
    exit 1
fi

source /mnt/c/Users/metam/OneDrive/Desktop/AlphaShares/alpha-dev/venv/bin/activate
python "$1"
deactivate

