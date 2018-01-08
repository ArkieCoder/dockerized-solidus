#!/bin/sh

cd /tmp

## install rails
cp Gemfile-rails Gemfile
bundle install
bundle update

## create a throwaway app with pg as the database
## to get the gems installed
rails new app -d postgresql
cat Gemfile-solidus >> app/Gemfile
cd app 
bundle install 
bundle update

cp Gemfile ..
