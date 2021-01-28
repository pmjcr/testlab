#!/bin/bash -e

cd $(dirname $0)
cd ..

cd .aws-sam/build/FlaskService
echo "build service.zip"
zip -qr ../service.zip .
