#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
unzip -r /out/repoarchive.zip ./* -x .git/*
export FILE_PATH='/out/repoarchive'

node /app/index.js
[ $? -eq 0 ]  || exit 1

