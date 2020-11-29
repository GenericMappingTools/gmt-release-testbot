#!/usr/bin/env bash
#
# Install GMT via Homebrew
#

set -x -e

brew update
brew install gmt ghostscript graphicsmagick ffmpeg

set +x +e
