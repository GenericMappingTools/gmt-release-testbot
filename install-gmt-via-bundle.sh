#!/usr/bin/env bash

set -x -e
GMT_BUNDLE="http://mirrors.ustc.edu.cn/gmt/bin/gmt-6.0.0-darwin-x86_64.dmg"
GMT_PACKAGE_FULLNAME=$(basename ${GMT_BUNDLE})
GMT_PACKAGE_NAME=${GMT_PACKAGE_FULL_NAME%.*}
GMT_VERSION=$(echo ${GMT_PACKAGE_NAME} | cut -d- -f2)

wget --quiet -c ${GMT_BUNDLE}
sudo hdiutil attach ${GMT_PACKAGE_FULLNAME}
cp -rf /Volumes/${GMT_PACKAGE_NAME}/GMT-${GMT_VERSION}.app /Applications
sudo hdiutil unmount /Volumes/${GMT_PACKAGE_NAME}

export GMTHOME=/Applications/GMT-${GMT_VERSION}.app/Contents/Resources
export PROJ_LIB=${GMTHOME}/share/proj6
export MAGICK_CONFIGURE_PATH=$GMTHOME/lib/GraphicsMagick-1.3.33/config
export PATH=${GMTHOME}/bin:${PATH}
set +x +e
