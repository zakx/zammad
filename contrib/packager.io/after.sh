#!/bin/bash
#
# packager.io after script
#

ruby -v

PATH=`pwd`/bin:`pwd`/vendor/bundle/bin:$PATH
#PATH=$PATH:/home/pkgr/bin:
#PATH=$PATH:`pwd`/bin
#PATH=$PATH:`pwd`/vendor/ruby-2.3.1/bin
#RAILS=`pwd`/vendor/ruby-2.3.1/bin/rails
RAILS=rails
ruby -v

env

gem env

ls -la
echo "-----"
ls -la bin/
echo "-----"
ls -la vendor/
echo "-----"
ls -la vendor/ruby-2.3.1
echo "-----"
ls -la vendor/ruby-2.3.1/bin

set -e

gem install bundle
bundle install

$RAILS r 'Locale.fetch'

$RAILS r 'Translation.fetch'
