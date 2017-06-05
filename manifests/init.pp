# == Class: emacs
#
# Manage Emacs
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { 'emacs': }
#
# === Authors
#
# Matus Goljer <matus.goljer@gmail.com.com>
#
# === Copyright
#
# Copyright 2017 Matus Goljer
#
class emacs {

  class { 'emacs::dependencies': } ->
  class { 'emacs::install': }

}
