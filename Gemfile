source 'https://rubygems.org'

gem 'rails', '~> 4.1.1'
gem 'pg'

gem 'authlogic'
gem 'bootstrap-sass'
gem 'formtastic', github: 'justinfrench/formtastic', branch: '2.3-stable'
gem 'formtastic-bootstrap', github: 'mjbellantoni/formtastic-bootstrap'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'scrypt'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc


group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  # gem 'capistrano-ext'
  # gem 'passenger'
  # gem 'rvm-capistrano'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test, :development do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'fuubar'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'rb-fsevent', :require => false
  gem 'shoulda'
  gem 'timecop'
end

group :production do
  gem 'rails_12factor'
end
