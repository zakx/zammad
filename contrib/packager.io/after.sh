#!/bin/bash
#
# packager.io after script
#

#PATH=$PATH:/home/pkgr/bin:
PATH=$PATH:`pwd`/bin

env

ls -la
ls -la bin/

set -e

gem install bundle

bundle install

rails r 'Locale.fetch'

rails r 'Translation.fetch'
