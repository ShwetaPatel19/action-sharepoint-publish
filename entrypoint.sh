#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
dir -r /out/repoarchive.dir ./* -x .git/*
export FILE_PATH='/out/repoarchive.dir'

node /app/index.js
[ $? -eq 0 ]  || exit 1

