#!/usr/bin/env bash
#
# Install GMT installers on Windows
#

set -x -e

GMT_INSTALLER_FULLNAME=$(basename ${GMT_INSTALLER_URL})

# Download the GMT installer
choco install wget
wget --quiet ${GMT_INSTALLER_URL}

# Cannot install the application on Azure Pipelines, possibly due to UAC.
# cmd.exe /C gmt-6.0.0-win64.exe /NCRC /S
# Use 7z to extract the exe file directly and copy to C:\programs\gmt6
7z x ${GMT_INSTALLER_FULLNAME}
mkdir -p /c/programs/gmt6
mv bin include lib share Uninstall.exe /c/programs/gmt6

# Install graphicsmagick.
choco install graphicsmagick

set +x +e
