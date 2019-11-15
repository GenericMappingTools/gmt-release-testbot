#!/usr/bin/bash

set -x

# check GMT version
gmt --version

# check GMT defaults
gmt defaults -Vd

# check GMT classic mode, GSHHG and DCW
gmt pscoast -R0/10/0/10 -JM6i -Ba -Ggray -ENG+p1p,blue -P -Vd > test.ps

# check GMT modern mode, GSHHG and DCW
gmt begin && gmt coast -R0/10/0/10 -JM6i -Ba -Ggray -ENG+p1p,blue -Vd && gmt end

# check remote file, one-liner
gmt grdimage @earth_relief_60m -JH10c -Baf -pdf map

# check remote file and PROJ settings
gmt grdinfo @BlueMarble_60m.tiff

# check local documentation
gmt docs -Q coast

# check movie in MP4 and GIF format
cat > globe.sh << EOF
gmt begin
   gmt coast -Rg -JG\${MOVIE_FRAME}/20/\${MOVIE_WIDTH} -Gmaroon -Sturquoise -Bg -X0 -Y0
gmt end
EOF
gmt movie globe.sh -Nglobe -T12 -Fmp4 -C6ix6ix100 -Lf -Vd
gmt movie globe.sh -Nglobe -T12 -Agif -C6ix6ix100 -Lf -Vd
