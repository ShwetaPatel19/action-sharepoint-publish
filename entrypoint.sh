#!/bin/sh -l

echo "Creating archive";
mkdir /out
cd $GITHUB_WORKSPACE
cp "HPC ATMP Response.pbix" /out
cp "HPC Adv Package Response.pbix" /out
cp "HPC Bump_Sort_BSM Response.pbix" /out
cp "HPC Demand Requirements.pbix" /out
cp "Substrate Response.pbix" /out
cp "Wafer Response.pbix" /out

export FILE_PATH1='/out/HPC ATMP Response.pbix'
export FILE_PATH2='/out/HPC Adv Package Response.pbix'
export FILE_PATH3='/out/HPC Bump_Sort_BSM Response.pbix'
export FILE_PATH4='/out/HPC Demand Requirements.pbix'
export FILE_PATH5='/out/Substrate Response.pbix'
export FILE_PATH6='/out/Wafer Response.pbix'




node /app/index.js
[ $? -eq 0 ]  || exit 1

