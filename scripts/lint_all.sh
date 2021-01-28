#!/bin/bash -e

cd $(dirname $0)
cd ..
BASE=$(pwd)

FUNCTIONS_BASE="${BASE}/source/python"

for FUNCTION_NAME in $(ls ${FUNCTIONS_BASE}); do 
    export FUNCTION_NAME
    ./scripts/lint.sh
done
