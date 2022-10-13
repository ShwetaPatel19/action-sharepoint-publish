#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE

export FILE_PATH= $GITHUB_WORKSPACE

node /app/index.js
[ $? -eq 0 ]  || exit 1

