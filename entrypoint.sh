#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
cp "HPC ATMP Response.pbix" /out
cp "HPC Adv Package Response.pbix " /out
cp "HPC Bump_Sort_BSM Response.pbix" /out
cp "HPC Demand Requirements.pbix" /out
cp "Substrate Response.pbix " /out
cp "Wafer Response.pbix" /out

export FILE_PATH='/out/*'


node /app/index.js
[ $? -eq 0 ]  || exit 1

