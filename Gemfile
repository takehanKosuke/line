source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.1'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem "loofah", ">= 2.2.3"
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem "rack", ">= 2.0.6"

# pry
gem 'pry-rails'

# haml
gem 'haml'
gem 'haml-rails'
gem 'erb2haml'

# for pagenate
gem 'kaminari'

# image uploader
gem 'carrierwave', '~> 1.1'
gem 'mini_magick'

# enum
gem 'i18n'
gem 'enum_help'

# bootstrap4
gem 'bootstrap'
gem 'jquery-rails'

# write schema for model
gem 'annotate'

# user model
gem 'devise'

# search
gem 'ransack'

#output the ER  diagram
gem 'rails-erd'

# turn work regularly
gem 'whenever'

gem 'sqlite3', group: [:development, :test]
gem 'pg', group: :production

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
