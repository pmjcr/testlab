#!/bin/bash -e

cd $(dirname $0)
cd ..

source .venv/bin/activate

cd source/python/$1

python3 main_local.py