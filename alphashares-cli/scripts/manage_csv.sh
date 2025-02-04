#!/bin/bash

if [ "$1" == "query" ]; then
    source alphashares_env/bin/activate
    python python_lib/query_csv.py "${@:2}"
    deactivate
elif [ "$1" == "add" ]; then
    source alphashares_env/bin/activate
    python python_lib/modify_csv.py add "${@:2}"
    deactivate
elif [ "$1" == "delete" ]; then
    source alphashares_env/bin/activate
    python python_lib/modify_csv.py delete "${@:2}"
    deactivate
else
    echo "Usage: ./manage_csv.sh [query|add|delete] [parameters]"
fi

