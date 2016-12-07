#source 'https://ruby.taobao.org'
source 'https://rubygems.org'

gem 'writeexcel', '~> 1.0', '>= 1.0.5'
group :default do
  gem 'json'

  gem 'grape'
  gem 'grape-swagger'
  gem 'active_model_serializers'
  gem 'grape-active_model_serializers'

  gem 'activerecord', :require => 'active_record'
  gem "paranoia" , "~> 2.0"
  ## If install pg error in Ubuntu:
  # $ sudo apt-get install libpq-dev build-essential
  # $ sudo ARCHFLAGS="-arch x86_64" gem install pg
  gem 'pg'
  gem 'rack-cors', :require => 'rack/cors'
  gem 'httparty'
  gem "bunny"
  # TODO: Web management panel
  gem 'ruby-supervisor', '~> 0.0.2'
  # gem 'rest-client'
end


group :development do
  gem 'rake', '~> 10.0.3'
  gem 'guard', '~> 2.10.5'
  gem 'guard-bundler', '~> 2.1.0'
  gem 'guard-rack', '~> 2.0.0'
  gem 'rubocop'
  gem 'racksh'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'simplecov'
end

group :deploy do
  gem 'puma'
  gem 'mina'
  gem 'mina-puma'
end
