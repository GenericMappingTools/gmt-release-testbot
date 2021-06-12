#!/usr/bin/env bash
#
# Install GMT on CentOS
#

set -x -e
yum -yq install epel-release
yum -yq install yum-plugin-copr
yum -yq copr enable genericmappingtools/gmt

# See https://github.com/GenericMappingTools/gmt/issues/3433
if [ "$(rpm -E %rhel)" == "8" ]; then
    yum config-manager --set-enabled powertools
fi

yum -yq install gmt
yum -yq localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm
yum -yq install GraphicsMagick ffmpeg gdal

set +x +e
