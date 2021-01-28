#!/bin/bash -e

cd $(dirname $0)
cd ..

cd terraform
if [ ! -d .terraform ] ; then
    terraform init
fi
terraform $@ --var-file ../config/variables.tfvars
