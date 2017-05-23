# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 3000, host: 3000, host_ip: "127.0.0.1"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder '../data', '/vagrant_data'

  config.vm.provider :virtualbox do |vb|
    vb.memory = '1024'    
  end


  config.vm.provision 'shell', inline: <<-SHELL
    sudo apt-get -y update
    sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev 
  SHELL

  config.vm.provision 'shell', privileged: false, inline: <<-SHELL
    cd
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL

    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL

    rbenv install 2.3.1
    rbenv global 2.3.1

    gem install bundler

    rbenv rehash

    git config --global color.ui true
    git config --global user.name "Felipe Moyano"
    git config --global user.email "gafemoyano@gmail.com"
    ssh-keygen -t rsa -b 4096 -C "gafemoyano@gmail.com"
    cat ~/.ssh/id_rsa.pub


    curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
    sudo apt-get install -y nodejs
    
    gem install rails

    sudo apt-get update
    sudo apt-get install postgresql-common
    sudo apt-get install postgresql libpq-dev

    sudo -u postgres createuser ememe -s

    # If you would like to set a password for the user, you can do the following
    sudo -u postgres psql
    postgres=# \password ememe
  SHELL
end
