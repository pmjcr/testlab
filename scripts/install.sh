#!/bin/bash -e

echo "Installing Virtual Environment"
if [ ! -d ${VENV_PATH} ] ; then
    python3 -m venv ${VENV_PATH}
fi

SOURCE_PATH="${FUNCTIONS_BASE}/${FUNCTION_NAME}"

echo "Installing ${FUNCTION_NAME}"
source ${VENV_PATH}/bin/activate
pip install --upgrade pip wheel
pip install -r ${SOURCE_PATH}/requirements.txt
pip install -r ${FUNCTIONS_BASE}/../requirements-dev.txt

deactivate