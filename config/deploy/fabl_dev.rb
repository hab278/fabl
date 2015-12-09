set :rails_env, "fabl_dev"
set :application, "fabl_dev"
set :domain,      "fabl-dev.cul.columbia.edu"
set :deploy_to,   "/opt/passenger/lito/#{application}/"
set :user, "litoserv"
set :scm_passphrase, "Current user can full owner domains."

role :app, domain
role :web, domain
role :db,  domain, :primary => true

