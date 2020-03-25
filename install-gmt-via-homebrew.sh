#!/usr/bin/env bash

set -x -e

brew update
brew install gmt
brew install ghostscript graphicsmagick ffmpeg

set +x -e
