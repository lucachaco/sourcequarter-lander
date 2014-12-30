#!/usr/bin/env bash

apt-get update

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

apt-get install -y git

apt-get install -y curl

#http://sharadchhetri.com/2014/06/30/install-jekyll-on-ubuntu-14-04-lts/
#install rvm
curl -#LO https://rvm.io/mpapis.asc
gpg --import mpapis.asc
curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
rvm requirements
#install ruby
rvm install 2.1.2
rvm use 2.1.2 --default

apt-get install -y nodejs
gem install jekyll
jekyll -v