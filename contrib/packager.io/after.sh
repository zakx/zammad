#!/bin/bash
#
# packager.io after script
#

set -e

gem install bundle

bundle install

rails r 'Locale.fetch'

rails r 'Translation.fetch'
