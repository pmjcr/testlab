#!/bin/bash -e

cd $(dirname $0)
cd ..
source ./VERSION
BASE=$(pwd)
MICROSERVICE=$(basename ${BASE})
echo ${MICROSERVICE} ${VERSION} ${FUNCTION_NAME}
aws s3 cp target/${FUNCTION_NAME}.zip s3://siemens-cactus-v2-build-artifacts/cloud/microservices/${MICROSERVICE}/${MICROSERVICE}_${FUNCTION_NAME}_${VERSION}.zip
