source 'https://rubygems.org'
ruby '2.3.3'

git_source(:github) do |repo_name|
    repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
    "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'


# Main Gems

## Turbolinks 5
gem 'turbolinks', '~> 5.0'

## Puma Server
gem 'puma', '~> 3.11'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.0'

## Foreman Process Manager
gem 'foreman', '~> 0.84'

# Use Redis adapter to run Action Cable
gem 'redis', '~> 4.0'

## Config Variables
gem 'config', '~> 1.5'

## Background Workers
gem 'sidekiq', '~> 5.0'

## Emails
gem 'mailgun-ruby', '~> 1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'


# Utilities

## Analytics
### Issues
gem 'sentry-raven', '~> 2.7'


group :development, :test do
    gem 'byebug', '~> 9.0'
    # Adds support for Capybara system testing and selenium driver
    gem 'capybara', '~> 2.15'
    gem 'selenium-webdriver', '~> 3.8'
end

group :development do
    gem 'web-console', '~> 3.5'
    gem 'pry-rails', '~> 0.3'

    # Errors
    gem 'better_errors', '~> 2.3'
    gem 'binding_of_caller', '~> 0.7'

    # Security
    gem 'brakeman', '~> 3.7', require: false

    # Code
    gem 'rubocop', '~> 0.51', require: false

    # Database
    gem 'mysql2', '~> 0.4'
    gem 'lol_dba', '~> 2.1', require: false
end

group :production do
    gem 'pg', '~> 0.21'
    gem 'rack-timeout', '~> 0.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
