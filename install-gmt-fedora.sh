#!/usr/bin/env bash
#
# Install GMT on Fedora
#

set -x -e

dnf -yq install dnf-plugins-core
dnf -yq copr enable genericmappingtools/gmt
dnf -y --verbose install gmt
dnf -yq install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf -yq install GraphicsMagick ffmpeg gdal

set +x +e
