source 'https://rubygems.org'

gem 'rails', '~> 4.1.11'

# Use MySQL for the database
gem 'mysql2', '~> 0.3.16'

# Use SCSS for stylesheets
# Locked in at beta1 release because major release doesn't play nice with compass-rails yet
gem 'sass-rails', '5.0.0.beta1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jQuery as the JavaScript library
gem 'jquery-rails', '~> 3.1.0'

# Use jQuery UI as well
gem 'jquery-ui-rails', '~> 5.0.2'

# Use font-awesome
gem 'font-awesome-rails', '~> 4.2.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 2.7.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', '~> 0.12.0'

# Use the Compass CSS framework for sprites, etc.
gem 'compass-rails', '~> 2.0.0'

# Use mustache for templating
# Fix to 0.99.4 cuz 0.99.5 broke my shit.
gem 'mustache', '0.99.4'
gem 'mustache-rails', github: 'NYULibraries/mustache-rails', require: 'mustache/railtie'

# # Use the NYU Libraries assets gem for shared NYU Libraries assets
# gem 'nyulibraries-assets', github: 'NYULibraries/nyulibraries-assets', tag: 'v4.4.0'
# gem 'fabl-assets', github: 'cul/fabl-assets'
gem 'fabl-assets', path: '/Users/marquis/src/fabl-assets'
# gem 'nyulibraries-assets', path: '/Users/marquis/src/nyulibraries-assets'


# comment out NYU bits...
# # Deploy the application with Formaggio deploy recipes
# gem 'formaggio', github: 'NYULibraries/formaggio', tag: 'v1.4.2'

# CU - just use capistrano, nothing local
group :development do
 gem 'capistrano', '~> 3.0', require: false
 gem 'capistrano-rails', '~> 1.1', require: false
 gem 'capistrano-bundler', '~> 1.1', require: false
 gem 'capistrano-rvm', '~> 0.1', require: false
 gem 'capistrano-passenger', '~> 0.1', require: false
end

# Use Blacklight for searching Solr
gem 'blacklight', '~> 5.8.0'
# gem 'blacklight', path: '/apps/blacklight'

# Use the Blacklight Advanced Search
gem 'blacklight_advanced_search', '~> 5.1.2'

gem 'unicode', '~> 0.4.4', :platforms => [:mri_18, :mri_19]

# Use sorted for sorting columns
gem 'sorted', '~> 1.0.0'

# Use Dalli for memcached
gem 'dalli', '~> 2.7.0'

# New Recic for tracking performance
gem 'newrelic_rpm', '~> 3.6'

# Comma to download CSV
gem 'comma', '~> 3.2.0'

# SolrEad to index EAD into Solr
gem 'solr_ead', '~> 0.7.2'
# gem 'solr_ead', path: '/apps/solr_ead'

# ISO 639 Language mapper
gem 'iso-639', '~> 0.2.5'

# Transition gems
# gem 'exlibris-aleph', github: 'barnabyalter/exlibris-aleph'
gem 'omniauth-nyulibraries', github: 'NYULibraries/omniauth-nyulibraries',  tag: 'v2.0.0'
gem 'devise', '~> 3.4.1'
# /Transition gems

# Faraday for http calls
gem 'faraday', '~> 0.9.1'

group :development do
  gem 'better_errors', '~> 2.0.0'
  gem 'binding_of_caller', '~> 0.7.2'
end

group :test do
  # Use Cucumber for integration testing
  gem 'cucumber-rails', require: false
  # Use VCR for testing with deterministic HTTP interactions
  gem 'vcr', '~> 2.9.3'
  gem 'webmock', '~> 1.20.0'
  # Use Selenium as the web driver for Cucumber
  gem 'selenium-webdriver', '~> 2.43.0'
  # Use DatabaseCleaner for clearing the test database
  gem 'database_cleaner', '~> 1.3.0'
  # Use factory girl for creating models
  gem 'factory_girl_rails', '~> 4.5.0'
  # Rspec as the test framework
  gem 'rspec-rails', '~> 2.14.2'
  # Phantomjs for headless browser testing
  gem 'poltergeist', '~> 1.6.0'
  gem 'phantomjs', '>= 1.9.0', :require => 'phantomjs/poltergeist'
  # Use SimpleCov for generating local coverage reports
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  # Use Coveralls to publish coverage on the open web
  gem 'coveralls', '~> 0.7.0', require: false
  #to be able to use rspec matchers
  gem 'rspec-expectations'
  gem 'rspec-solr', '~> 1.0.1'
  gem 'term-ansicolor', '>= 1.3.2'
end

# Pry for debubbing
gem 'pry', group: [:test, :development]

# Use Jetty for test and development Solr
gem 'jettywrapper', '~> 1.7', group: [:test, :development]
