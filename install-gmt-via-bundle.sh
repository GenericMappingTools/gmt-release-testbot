#!/usr/bin/env bash
#
# Install GMT macOS bundle
#

set -x -e

GMT_BUNDLE_FULLNAME=$(basename ${GMT_BUNDLE_URL})
GMT_BUNDLE_NAME=${GMT_BUNDLE_FULLNAME%.*}
GMT_VERSION=$(echo ${GMT_BUNDLE_NAME} | cut -d- -f2)

# Download bundle
wget --quiet ${GMT_BUNDLE_URL}

# Install bundle
sudo hdiutil attach ${GMT_BUNDLE_FULLNAME}
cp -rf /Volumes/${GMT_BUNDLE_NAME}/GMT-${GMT_VERSION}.app /Applications/GMT.app
sudo hdiutil unmount /Volumes/${GMT_BUNDLE_NAME}

# Add PATHs
GMTHOME=/Applications/GMT.app/Contents/Resources
echo "PROJ_LIB=${GMTHOME}/share/proj6" >> $GITHUB_ENV
echo "GS_LIB=${GMTHOME}/share/ghostscript/9.53.3/Resource/Init" >> $GITHUB_ENV
echo "MAGICK_CONFIGURE_PATH=${GMTHOME}/lib/GraphicsMagick/config" >> $GITHUB_ENV
echo "${GMTHOME}/bin" >> $GITHUB_PATH

set +x +e
