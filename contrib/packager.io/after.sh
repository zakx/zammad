#!/bin/bash
#
# packager.io after script
#

PATH=/opt/zammad/bin:/opt/zammad/vendor/bundle/bin:/sbin:/bin:/usr/sbin:/usr/bin:

set -e

gem install bundle

bundle install

rails r 'Locale.fetch'

rails r 'Translation.fetch'
