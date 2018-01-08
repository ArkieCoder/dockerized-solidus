#!/bin/sh

init_file=/tmp/state/APP_INITIALIZED

if [ ! -r $init_file ]
then
  echo "Initializing solidus ... "
  ADMIN_USER=admin@site
  ADMIN_PASS=pass123
  cd /usr/src
  rails new app -d postgresql
  cp /tmp/Gemfile app/Gemfile
  bundle install && bundle update
  cp /tmp/site-database.yml app/config/database.yml
  cd app
  rake db:create
  bundle exec rails g spree:install --admin-email=$ADMIN_USER --admin-password=$ADMIN_PASS
  bundle exec rails g solidus:auth:install
  bundle exec rake railties:install:migrations
  bundle exec rake db:migrate
  touch $init_file
  echo "Initialization complete!"
fi
