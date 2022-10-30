# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) do |repo| "https://github.com/#{repo}.git" end

ruby "2.7.2"

gem "bootsnap", ">= 1.4.2", require: false
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.3", ">= 6.0.3.4"
gem "rack-cors"
gem "redis"
gem "httparty"
gem "mongoid"

gem "graphql"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
end

group :development do
  gem "listen", "~> 3.2"
  gem "web-console", ">= 3.3.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
