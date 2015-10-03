source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.3'
gem 'puma'

group :production do
  gem 'pg'
  gem 'rack-timeout'
  gem 'rails_12factor'
end

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jbuilder', '~> 2.0'
gem 'bower-rails'
gem 'angular-rails-templates'
gem 'ng-rails-csrf'

gem 'devise_token_auth', '~> 0.1.34'
gem 'omniauth'
gem 'rack-cors', require: 'rack/cors'
gem 'stripe', git: 'https://github.com/stripe/stripe-ruby'

gem 'figaro'

gem 'sdoc', '~> 0.4.0', group: :doc

gem 'ffaker'

group :test, :development do
  gem 'sqlite3'
  gem 'byebug'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end