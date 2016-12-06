#!/bin/bash
#
# packager.io after script
#

#PATH=$PATH:/home/pkgr/bin:
#PATH=$PATH:`pwd`/bin
#PATH=$PATH:`pwd`/vendor/ruby-2.3.1/bin
#RAILS=`pwd`/vendor/ruby-2.3.1/bin/rails
RAILS=vendor/ruby-2.3.1/bin/rails

env

ls -la
echo "-----"
ls -la bin/
echo "-----"
ls -la vendor/
echo "-----"
ls -la vendor/bin
echo "-----"
ls -la vendor/ruby-2.3.1

set -e

#gem install bundle
#bundle install

$RAILS r 'Locale.fetch'

$RAILS r 'Translation.fetch'
