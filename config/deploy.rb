require 'formaggio/capistrano'
set :app_title, 'getit'
set :stages, ['staging', 'qa', 'production', 'reindex']
set :rvm_ruby_string, "ruby-2.5.5"
set :new_relic_environments, ["none"]
