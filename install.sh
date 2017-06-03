#!/bin/bash
set -e

VERSION=$(cat "$PWD/VERSION")

cd "$PWD/emacs-$VERSION"
make install prefix="/usr/local/stow/emacs-$VERSION"
cd /usr/local/stow
stow "emacs-$VERSION"
