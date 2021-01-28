#!/bin/bash -e

cd $(dirname $0)
cd ..

export BASE=$(pwd)
export FUNCTIONS_BASE="${BASE}/source/python"
export VENV_PATH=".venv"
export GIT_REPOSITORY_HOST="ssh://git@code.siemens.com"

for FUNCTION_NAME in $(ls ${FUNCTIONS_BASE}); do 
    echo "FUNCTION ${FUNCTION_NAME}"
    export FUNCTION_NAME
    ./scripts/install.sh
done