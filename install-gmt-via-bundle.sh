#!/usr/bin/env bash
#
# Install GMT macOS bundle
#

set -e

GMT_BUNDLE_FULLNAME=$(basename ${GMT_BUNDLE_URL})
GMT_BUNDLE_NAME=${GMT_BUNDLE_FULLNAME%.*}
GMT_VERSION=$(echo ${GMT_BUNDLE_NAME} | cut -d- -f2)

# Download bundle
wget --quiet ${GMT_BUNDLE_URL}

# Install bundle
sudo hdiutil attach ${GMT_BUNDLE_FULLNAME}
cp -rf /Volumes/${GMT_BUNDLE_NAME}/GMT-${GMT_VERSION}.app /Applications/GMT.app
sudo hdiutil unmount /Volumes/${GMT_BUNDLE_NAME}

set +e
