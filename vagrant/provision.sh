#!/usr/bin/env bash
set -e

echo "Initial apt-get update..."
apt-get update >/dev/null

echo "Installing dev dependencies..."
apt-get --yes install \
        libcairo2-dev \
        libdbus-1-dev \
        libgconf2-dev \
        libgif-dev \
        libjpeg-dev \
        libmagickwand-dev \
        libncurses-dev \
        libotf-dev \
        librsvg2-dev \
        libtiff-dev \
        libxml2-dev \
        libxpm-dev \
        >/dev/null
