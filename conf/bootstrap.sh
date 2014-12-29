#!/usr/bin/env bash

apt-get update


apt-get install -y git

apt-get update
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

#install ruby from source
cd
wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz
tar -xzvf ruby-2.1.3.tar.gz
cd ruby-2.1.3/
./configure
make
sudo make install
ruby -v