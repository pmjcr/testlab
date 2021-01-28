#!/bin/bash -e

cd $(dirname $0)
cd ..
BASE=$(pwd)

export GIT_REPOSITORY_HOST="https://code.siemens.com"

echo "function name: ${FUNCTION_NAME}"
echo "clean target/source"
rm -rf target/source

echo "install pip dependencies"
pip install -q --upgrade pip
pip install -q wheel
pip install -q -r source/python/${FUNCTION_NAME}/requirements.txt -t target/source

echo "sync source"
rsync -avvP --exclude .venv --exclude .vscode --exclude __pycache__ --exclude .pytest_cache --exclude "*~" source/python/${FUNCTION_NAME}/ target/source
cd target/source
OUTPUT_ZIP_FILE="${FUNCTION_NAME}.zip"

echo "zip source to ${OUTPUT_ZIP_FILE}"
zip -qr ../${OUTPUT_ZIP_FILE} .
cd ..
rm -rf source