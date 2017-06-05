#!/usr/bin/env bash
set -e

if which puppet > /dev/null; then
  echo "Puppet is already installed."
  exit 0
fi

# Do the initial apt-get update
echo "Initial apt-get update..."
apt-get update >/dev/null

# Install Puppet
echo "Installing Puppet..."
apt-get --yes install puppet >/dev/null

echo "Puppet installed!"

echo "Installing RubyGems..."
apt-get --yes install rubygems >/dev/null

gem install --no-ri --no-rdoc rubygems-update
update_rubygems >/dev/null
