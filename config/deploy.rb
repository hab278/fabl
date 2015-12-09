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

set :default_stage, "fabl_dev"
set :stages, %w(fabl_dev fabl_test fabl_prod)
set :rake, "#{rake} --trace" # turn this on if you're having trouble with deploys

require 'capistrano/ext/multistage'
require 'bundler/capistrano'
require 'date'

default_run_options[:pty] = true

set :application, "fabl"
# set :branch do
#   default_tag = `git tag`.split("\n").last
# 
#   tag = Capistrano::CLI.ui.ask "Tag to deploy (make sure to push the tag first): [#{default_tag}] "
#   tag = default_tag if tag.empty?
#   tag
# end
set :branch, 'master'

set :scm, :git
set :git_enable_submodules, 1
set :deploy_via, :remote_cache
set :repository,  "git@github.com:cul/fabl.git"
set :use_sudo, false


namespace :deploy do
  desc "Add tag based on current version"
  task :auto_tag, :roles => :app do
    current_version = IO.read("VERSION").to_s.strip + Date.today.strftime("-%y%m%d")
    tag = Capistrano::CLI.ui.ask "Tag to add: [#{current_version}] "
    tag = current_version if tag.empty?

    system("git tag -a #{tag} -m 'auto-tagged' && git push origin --tags")
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :symlink_shared do
    run "ln -nfs #{deploy_to}shared/app_config.yml #{release_path}/config/app_config.yml"
    run "ln -nfs #{deploy_to}shared/database.yml #{release_path}/config/database.yml"
  end


end

after 'deploy:update_code', 'deploy:symlink_shared'
