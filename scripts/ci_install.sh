#!/bin/bash -e

cd $(dirname $0)
cd ..

export BASE=$(pwd)
export FUNCTIONS_BASE="${BASE}/source/python"
export VENV_PATH="${FUNCTIONS_BASE}/${FUNCTION_NAME}/.venv"
export GIT_REPOSITORY_HOST="https://code.siemens.com"

./scripts/install.sh