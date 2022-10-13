#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
cp "HPC ATMP Response.pbix" /out
export FILE_PATH='/out'


node /app/index.js
[ $? -eq 0 ]  || exit 1

