REM
REM Run GMT Tests
REM

@echo on
REM check GMT version
gmt --version

REM check GMT defaults
gmt defaults -Vd

REM check GMT classic mode, GSHHG and DCW
gmt pscoast -R0/10/0/10 -JM6i -Ba -Ggray -ENG+p1p,blue -P -Vd > test.ps

REM check GMT modern mode, GSHHG and DCW
gmt begin
gmt coast -R0/10/0/10 -JM6i -Ba -Ggray -ENG+p1p,blue
gmt end

REM check remote file, one-liner
gmt grdimage @earth_relief_01d -JH10c -Baf -pdf map

REM check remote file and PROJ settings
gmt grdinfo @earth_day_01d

REM check local documentation
gmt docs -Q coast

REM check movie in MP4 and GIF format
echo "gmt begin" > globe.bat
echo "gmt coast -Rg -JG%%MOVIE_FRAME%%/20/%%MOVIE_WIDTH%% -Gmaroon -Sturquoise -Bg -X0 -Y0" >> globe.bat
echo "gmt end" >> globe.bat
gmt movie globe.bat -Nglobe -T12 -Fmp4 -Agif -C6ix6ix100 -Lf -Vd

@echo off
