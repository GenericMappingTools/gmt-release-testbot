#!/usr/bin/env bash
#
# Build GMT source codes
#

if [ "$(lsb_release -r -s)" = "14.04" ]; then
	apt-get -qq update
	apt-get -y install software-properties-common
	add-apt-repository universe
	apt-get -y install libav-tools
	add-apt-repository ppa:mc3man/trusty-media
fi

apt-get -qq update
apt-get -qq -y install --no-install-recommends --no-install-suggests \
	build-essential cmake libcurl4-gnutls-dev libnetcdf-dev \
	gdal-bin libgdal-dev libfftw3-dev libpcre3-dev liblapack-dev \
	libblas-dev libglib2.0-dev ghostscript \
	graphicsmagick curl ffmpeg

# variables
GMT_TARBALL_FULLNAME=$(basename ${GMT_TARBALL_URL})
if [ "${GMT_TARBALL_FULLNAME}" = "master.tar.gz" ]; then
	GMT_VERSION="master"
else
	GMT_VERSION=$(echo ${GMT_TARBALL_FULLNAME} | cut -d- -f2)
fi
GSHHG_TARBALL_FULLNAME=$(basename ${GSHHG_TARBALL_URL})
GSHHG_TARBALL_NAME=${GSHHG_TARBALL_FULLNAME%.tar.gz}
GSHHG_VERSION=$(echo ${GSHHG_TARBALL_NAME} | cut -d- -f3)
DCW_TARBALL_FULLNAME=$(basename ${DCW_TARBALL_URL})
DCW_TARBALL_NAME=${DCW_TARBALL_FULLNAME%.tar.gz}
DCW_VERSION=$(echo ${DCW_TARBALL_NAME} | cut -d- -f3)

# Download GMT, GSHHG and DCW source tarballs
curl -sSLO ${GMT_TARBALL_URL}
curl -sSLO ${GSHHG_TARBALL_URL}
curl -sSLO ${DCW_TARBALL_URL}

# Extract tarballs
tar -xf ${GMT_TARBALL_FULLNAME}
tar -xf ${GSHHG_TARBALL_FULLNAME}
tar -xf ${DCW_TARBALL_FULLNAME}

mv gshhg-gmt-${GSHHG_VERSION} gmt-${GMT_VERSION}/share/gshhg
mv dcw-gmt-${DCW_VERSION} gmt-${GMT_VERSION}/share/dcw-gmt

# Build and install GMT
cd gmt-${GMT_VERSION}
cat > cmake/ConfigUser.cmake << EOF
set (CMAKE_INSTALL_PREFIX "/opt/GMT-${GMT_VERSION}")
set (GMT_INSTALL_MODULE_LINKS FALSE)
set (COPY_GSHHG TRUE)
set (COPY_DCW TRUE)

set (GMT_ENABLE_OPENMP TRUE)
set (GMT_USE_THREADS TRUE)
EOF

mkdir build
cd build
cmake ..
make
make install

cd ../..
export PATH=/opt/GMT-${GMT_VERSION}/bin:${PATH}
