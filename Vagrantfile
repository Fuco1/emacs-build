Vagrant.require_version "~> 1.8.0"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.define "emacs-build" do |eb|
    eb.vm.hostname = "emacs-build"

    eb.vm.provider "virtualbox" do |v|
      v.name = "emacs-build"
      v.linked_clone = true
      v.cpus = 2
    end

    eb.vm.provision :shell, path: "vagrant/puppet.sh"

    eb.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "."
      puppet.manifest_file = "default.pp"
    end
  end

end
