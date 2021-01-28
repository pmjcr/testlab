#!/bin/bash -e

cd $(dirname $0)
cd ..
BASE=$(pwd)

rm -rf ${BASE}/target
mkdir -p ${BASE}/target

FUNCTIONS_BASE="${BASE}/source/python"

for FUNCTION_NAME in $(ls ${FUNCTIONS_BASE}); do 
    docker run -t --rm \
	-v ${FUNCTIONS_BASE}/${FUNCTION_NAME}:/work/source/python/${FUNCTION_NAME}:ro \
	-v ${BASE}/scripts:/work/scripts:ro \
	-v ${BASE}/target:/work/target \
	-w /work \
	-e "FUNCTION_NAME=${FUNCTION_NAME}" \
	lambci/lambda:build-python3.6 \
	scripts/build_inside_lambda_container.sh
done 
