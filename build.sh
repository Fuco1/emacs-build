#!/bin/bash
set -e

BUILD_ENV="$1"
if [ -z "$BUILD_ENV" ]; then
    BUILD_ENV='vagrant'
fi

if [ "$BUILD_ENV" = 'vagrant' ]; then
    vagrant up --provision
    vagrant ssh -c "cd /vagrant && bash build.sh host"
    vagrant halt
    exit 0
fi

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
# We make twice because the first time this error happens
#   Adding new name: Operation not permitted, /vagrant/emacs-25.2/src/emacs, /vagrant/emacs-25.2/src/emacs-25.2.1
# /shrug
make -j 2 || make -j 2
