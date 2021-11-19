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

@echo off
