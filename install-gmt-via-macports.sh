#!/usr/bin/env bash

set -x

# Install macports
wget --quiet https://distfiles.macports.org/MacPorts/MacPorts-2.6.2.tar.bz2
tar xzf MacPorts-2.6.2.tar.bz2
cd MacPorts-2.6.2
./configure && make && sudo make install
export PATH=/opt/local/bin:${PATH}
sudo port -v selfupdate

set +x
