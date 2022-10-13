#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
echo "$(pwd)"
cp ".pbix$" /out
export FILE_PATH='/out/*'


node /app/index.js
[ $? -eq 0 ]  || exit 1

