#!/usr/bin/env bash

set -x -e

# Install macports
wget --quiet https://distfiles.macports.org/MacPorts/MacPorts-2.6.2.tar.bz2
tar xzf MacPorts-2.6.2.tar.bz2
cd MacPorts-2.6.2
./configure && make && sudo make install
export PATH=/opt/local/bin:${PATH}
sudo port -v selfupdate

# Install GMT
sudo port install gdal +hdf5 +netcdf +openjpeg
sudo port install gmt6
sudo port install graphicsmagick ffmpeg

set +x +e
