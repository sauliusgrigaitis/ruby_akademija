#!/usr/bin/env bash

bundle install
bundle exec mutant --include lib --use rspec Match
bundle exec rspec
bundle exec rubocop
bundle exec reek

