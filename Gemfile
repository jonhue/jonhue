# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'

gem 'bootsnap', require: false
gem 'config'
gem 'haml'
gem 'metamagic'
gem 'mozaic'
gem 'myg'
gem 'pg'
gem 'puma'
gem 'sass-rails'
gem 'search-engine-optimization'
gem 'sentry-raven'
gem 'skylight'
gem 'turbolinks'
gem 'uglifier'
gem 'webpacker'

group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'dotenv-rails'
  gem 'haml_lint', require: false
  gem 'rspec-rails', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'selenium-webdriver'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman', require: false
  gem 'pry-rails'
  gem 'web-console'
end

group :production do
  gem 'rack-timeout'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
