#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
cp "HPC ATMP Response.pbix" /out/repoarchive
export FILE_PATH= '/out/repoarchive'

node /app/index.js
[ $? -eq 0 ]  || exit 1

