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
        libgpm-dev \
        libjpeg-dev \
        libm17n-dev \
        libmagickwand-dev \
        libncurses-dev \
        libotf-dev \
        librsvg2-dev \
        libtiff-dev \
        libxml2-dev \
        libxft-dev \
        libxpm-dev \
        m17n-db \
        m17n-lib-bin \
        >/dev/null
