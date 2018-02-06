source 'https://rubygems.org'
ruby '2.3.3'

git_source(:github) do |repo_name|
    repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
    "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'turbolinks'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'config'
gem 'haml'
gem 'metamagic'
gem 'search-engine-optimization'
gem 'simple_form'
gem 'ahoy_matey'
gem 'friendly_id'
gem 'nestive-rails'
gem 'turbolinks-animate'
gem 'sentry-raven'
gem 'devise-onesignal'
gem 'pwa'
gem 'r404'
gem 'randomize_id'
gem 'mozaic'
gem 'myg'
gem 'foreman'


group :development, :test do
    gem 'byebug'
    gem 'capybara'
    gem 'selenium-webdriver'
end

group :development do
    gem 'web-console'
    gem 'pry-rails'
    gem 'better_errors'
    gem 'binding_of_caller'
    gem 'brakeman', require: false
    gem 'rubocop', require: false
    gem 'mysql2'
    gem 'lol_dba', require: false
end

group :production do
    gem 'pg'
    gem 'rack-timeout'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
