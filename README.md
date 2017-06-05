# emacs-build

Build setup for [Emacs](https://www.gnu.org/software/emacs/).

This project uses [build-base](https://github.com/Fuco1/build-base) structure.

# Build Dependencies

This package does not build inside a container because Emacs is notoriously difficult to build inside containers.  So if you want to have all the advanced features like image support or widgets you will need to install the libraries to the host.  At least for now.

If you have puppet you can run

    sudo puppet apply --modulepath=$PWD/modules default.pp

to grab all dependencies.

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

# Vagrant

If you don't want to taint your precious host machine (as you should not!) you can instead build inside [Vagrant](https://www.vagrantup.com/) virtual machine.  Get it with

    sudo apt-get install vagrant virtualbox

then run

    vagrant up

to spin up the VM.  It will be provisioned with all the necessary dependencies.  After it is running ssh into it with

    vagrant ssh

and change to the `/vagrant` directory (where *this* directory will be mounted).  Then run the `./build.sh` as usual to build.  Run `./install.sh` from the host to install emacs as a stow package.
