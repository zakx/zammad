#!/bin/bash
#
# packager.io after script
#

#PATH=$PATH:/home/pkgr/bin:
#PATH=$PATH:`pwd`/bin
PATH=$PATH:`pwd`/vendor/ruby-2.3.1/bin

env

ls -la
ls -la bin/

set -e

gem install bundle

bundle install

rails r 'Locale.fetch'

rails r 'Translation.fetch'
