#!/usr/bin/env bash
#
# Install GMT via MacPorts
#

set -x -e

# Install macports
macos_version=$(sw_vers -productVersion)
if [[ "$macos_version" =~ "11.0" ]]; then
	pkg="https://distfiles.macports.org/MacPorts/MacPorts-2.6.4_1-11-BigSur.pkg"
elif [[ "$macos_version" =~ "10.15" ]]; then
	pkg="https://distfiles.macports.org/MacPorts/MacPorts-2.6.4-10.15-Catalina.pkg"
else
	echo "macOS version ${macos_version} not supported."
	exit 1
fi
wget --quiet $pkg

sudo installer -verbose -pkg $(basename $pkg) -target /
export PATH=/opt/local/bin:${PATH}
sudo port -v selfupdate

# Install GMT
sudo port install gdal +hdf5 +netcdf +openjpeg
sudo port install gmt6
sudo port install graphicsmagick ffmpeg

# Add PATHs
echo "/opt/local/bin" >> $GITHUB_PATH
echo "/opt/local/lib/gmt6/bin" >> $GITHUB_PATH

set +x +e
