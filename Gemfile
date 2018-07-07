# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'

gem 'acts_as_belongable'
gem 'bootsnap', require: false
gem 'certified'
gem 'config'
gem 'friendly_id'
gem 'gemoji'
gem 'haml'
gem 'httparty'
gem 'metamagic'
gem 'mozaic'
gem 'myg'
gem 'nilify_blanks'
gem 'octokit'
gem 'onsignal'
gem 'puma'
gem 'pwa'
gem 'r404'
gem 'randomize_id'
gem 'sass-rails'
gem 'search-engine-optimization'
gem 'sentry-raven'
gem 'simple_form'
gem 'turbolinks'
gem 'turbolinks-animate'
gem 'uglifier'
gem 'webpacker'

group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman', require: false
  gem 'mysql2'
  gem 'pry-rails'
  gem 'rspec-rails', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'web-console'
end

group :production do
  gem 'pg'
  gem 'rack-timeout'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
