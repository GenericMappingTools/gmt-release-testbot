#!/usr/bin/bash

set -x -e

# check GMT version
gmt --version

# check GMT defaults
gmt defaults -Vd

# check GMT classic mode, GSHHG and DCW
gmt pscoast -R0/10/0/10 -JM6i -Ba -Ggray -ENG+p1p,blue -P -Vd > test.ps

# check GMT modern mode, GSHHG and DCW
# NOTE: For unknown reasons, bash on Windows from Azure Pipelines
# runs each command with different PPID, which breaks GMT's modern mode.
if [ "${AGENT_OS}" = "Windows_NT" ]; then export GMT_SESSION_NAME=$$; fi
gmt begin
gmt coast -R0/10/0/10 -JM6i -Ba -Ggray -ENG+p1p,blue -Vd
gmt end
if [ "${AGENT_OS}" == "Windows_NT" ]; then unset GMT_SESSION_NAME; fi

# check remote file, one-liner
gmt grdimage @earth_relief_01d -JH10c -Baf -pdf map

# check remote file and PROJ settings
gmt grdinfo @earth_day_01d

# check if documentation is locally installed
doc_url=$(gmt docs -Q -Vd coast)
[[ ${doc_url} == file:///* ]]

# check movie in MP4 and GIF format
cat > globe.sh << EOF
gmt begin
   gmt coast -Rg -JG\${MOVIE_FRAME}/20/\${MOVIE_WIDTH} -Gmaroon -Sturquoise -Bg -X0 -Y0
gmt end
EOF
gmt movie globe.sh -Nglobe -T12 -Fmp4 -Agif -C6ix6ix100 -Lf -Vd

set +x +e
