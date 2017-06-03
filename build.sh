#!/bin/bash
set -e

VERSION=$(cat "$PWD/VERSION")

if [ ! -d "$PWD/emacs-$VERSION" ]; then
    if [ ! -f "$PWD/emacs-$VERSION.tar.xz" ]; then
        wget "http://ftp.gnu.org/gnu/emacs/emacs-$VERSION.tar.xz"
    fi
    tar -xvf "$PWD/emacs-$VERSION.tar.xz" && rm "$PWD/emacs-$VERSION.tar.xz"
fi

cd "$PWD/emacs-$VERSION"
./configure --with-x-toolkit=no
make clean
make -j 2
