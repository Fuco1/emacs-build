Vagrant.require_version ">= 1.8.0", "< 2.0.0"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = true
    s.inline = "sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n \\|\\| true/' /root/.profile"
  end

  config.vm.provision "disable-apt-periodic-updates", type: "shell" do |s|
    s.privileged = true
    s.inline = "echo 'APT::Periodic::Enable \"0\";' > /etc/apt/apt.conf.d/02periodic"
  end

  config.vm.define "emacs-build" do |eb|
    eb.vm.hostname = "emacs-build"

    eb.vm.provider "virtualbox" do |v|
      v.name = "emacs-build"
      v.linked_clone = true
      v.cpus = 2
    end

    eb.vm.provision :shell, path: "provision.sh"
  end

end
