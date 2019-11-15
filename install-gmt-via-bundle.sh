#!/usr/bin/env bash

set -x -e
GMT_BUNDLE="http://mirrors.ustc.edu.cn/gmt/bin/gmt-6.0.0-darwin-x86_64.dmg"
GMT_PACKAGE_FULLNAME=$(basename ${GMT_BUNDLE})
GMT_PACKAGE_NAME=${GMT_PACKAGE_FULLNAME%.*}
GMT_VERSION=$(echo ${GMT_PACKAGE_NAME} | cut -d- -f2)

wget --quiet -c ${GMT_BUNDLE}
sudo hdiutil attach ${GMT_PACKAGE_FULLNAME}
cp -rf /Volumes/${GMT_PACKAGE_NAME}/GMT-${GMT_VERSION}.app /Applications
sudo hdiutil unmount /Volumes/${GMT_PACKAGE_NAME}

set +x +e
