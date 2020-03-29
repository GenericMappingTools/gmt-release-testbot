#!/usr/bin/env bash
#
# Install GMT installers on Windows
#

set -x -e

GMT_INSTALLER_FULLNAME=$(basename ${GMT_INSTALLER_URL})

choco install wget
wget ${GMT_INSTALLER_URL}

# Cannot install exe on Azure Pipelines, use 7z instead
# cmd.exe /C gmt-6.0.0-win64.exe /NCRC /S
7z x ${GMT_INSTALLER_FULLNAME}
mkdir -p /c/programs/gmt6
mv bin include lib share Uninstall.exe /c/programs/gmt6

# Install graphicsmagick
choco install graphicsmagick

set +x +e
