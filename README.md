# emacs-build

Build setup for [Emacs](https://www.gnu.org/software/emacs/).

This project uses [build-base](https://github.com/Fuco1/build-base) structure.

# Build Dependencies

This does not build inside a container because Emacs is notoriously difficult to build.  So if you want to have all the advanced features like image support or widgets you will need to install the libraries to the host.  At least for now.

Here's a [puppet class](https://github.com/Fuco1/puppet-ws/blob/master/local-modules/emacs/manifests/dependencies.pp) to pull all of them (I will later add the puppet setup to this repo as well).

# Usage

The `./install` step depends on `stow`, so get it first:

``` shell
sudo apt-get install stow
```

``` shell
git clone --recursive https://github.com/Fuco1/emacs-build.git
cd emacs-build
./build
sudo ./install
```
