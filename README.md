# emacs-build

Build setup for [Emacs](https://www.gnu.org/software/emacs/).

This project uses [build-base](https://github.com/Fuco1/build-base) structure.

# Usage

The `./build.sh` step depends on [Vagrant](https://www.vagrantup.com/), so get it first:

``` shell
sudo apt-get install vagrant virtualbox
```

You can also build on your host system by passing `host` argument to `./build.sh`.  If you decide for that you will need to provision the host with all the build dependencies first by running `sudo bash provision.sh`.

The `./install.sh` step depends on `stow`, so get it first:

``` shell
sudo apt-get install stow
```

With everything set up, use:

``` shell
git clone --recursive https://github.com/Fuco1/emacs-build.git
cd emacs-build
./build.sh
sudo ./install.sh
```
