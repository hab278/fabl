

# deployment target: server, service-account, and path, must match how the server is setup
server 'fabl-dev.cul.columbia.edu', user: 'litoserv', roles: %w{app db web}
set :deploy_to, '/opt/passenger/lito/fabl_dev'