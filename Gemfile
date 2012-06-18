require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

ruby '1.9.3'

gem 'heroku'
gem 'taps'
gem 'rails', '3.2.1'
gem 'jquery-rails'
gem 'pg'
gem 'bootstrap-sass', '2.0.0'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'mysql2'


# for JavaScript runtime in linux os
if HOST_OS =~ /linux/i
	gem 'therubyracer', '~> 0.9.10'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'debugger'
  gem 'rspec-rails', '2.10.0'
  gem 'annotate', '~> 2.4.1.beta'
end

group :test do
	gem 'shoulda-matchers', '>= 1.0.0'
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails', '1.4.0'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
