#!/usr/bin/env bash

set -x

if [[ "${TRAVIS_JOB_NAME}" =~ ^Bundle ]]; then
	GMT_PACKAGE_NAME=gmt-${GMT_VERSION}-darwin-x86_64
	GMT_PACKAGE_SUFFIX=dmg
	GMT_PACKAGE_URL=${GMT_SITE}/${GMT_PACKAGE_NAME}.${GMT_PACKAGE_SUFFIX}

	# Download
	wget --quiet ${GMT_PACKAGE_URL}

	# Install
	sudo hdiutil attach ${GMT_PACKAGE_NAME}.${GMT_PACKAGE_SUFFIX}
	cp -rf /Volumes/${GMT_PACKAGE_NAME}/GMT-${GMT_VERSION}.app /Applications
	sudo hdiutil unmount /Volumes/${GMT_PACKAGE_NAME}

	export GMTHOME=/Applications/GMT-${GMT_VERSION}.app/Contents/Resources
	export PROJ_LIB=${GMTHOME}/share/proj6
	export MAGICK_CONFIGURE_PATH=$GMTHOME/lib/GraphicsMagick-1.3.33/config
	export PATH=${GMTHOME}/bin:${PATH}
elif [[ "${TRAVIS_JOB_NAME}" =~ ^Homebrew ]]; then
	brew update
	brew install gmt
	brew install ghostscript graphicsmagick ffmpeg
fi

set +x
