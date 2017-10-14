source 'https://rubygems.org'

ruby '2.3.4'

gem 'pg'
gem 'active_model_serializers'
gem 'rack-timeout'
gem 'rails', '~> 4.2'
gem 'responders', '~> 2.0'
gem 'unicorn'
gem 'thor', '0.19.1'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'bundler-audit', require: false
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.4'
  gem 'rails_best_practices'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers', require: false
  gem 'webmock'
  gem 'mocha'
end
