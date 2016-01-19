# NYU

# require 'formaggio/capistrano'
# 
# set :app_title, "findingaids"
# 
# set :rvm_ruby_string, "2.1.5"
# 
# namespace :deploy do
#   # Remove EADs from server after deploying
#   task :remove_eads do
#     run "rm -rf #{current_path}/findingaids_eads"
#   end
#   # Remove EADs from local repos after deploying
#   task :remove_local_eads do
#     run_locally "rm -rf ./findingaids_eads"
#   end
# end

# COLUMBIA

# what's our app, and where can we fetch it
set :application, 'fabl'
set :repo_url, 'git@github.com:cul/fabl.git'
# don't automatically deploy current branch, ask us which branch
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
# setup some symlinks for files/dirs outside of source code control
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/app_config.yml', 'config/solr.yml', 'public/robots.txt')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache')
# restart passenger with 'touch tmp/restart.txt' instead of 'passenger-config restart-app'
set :passenger_restart_with_touch, true

# Use non-default Ruby
# set :rvm_ruby_string, "2.1.5"
set :rvm_ruby_version, "2.1.5"


