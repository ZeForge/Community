source 'https://rubygems.org'

# Tells RVM to load ruby version 2.4.0
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Ruby on Rails version 5.0.2
gem 'rails', '~> 5.0.2'

gem 'sqlite3'
gem 'rails_admin', '~> 1.1.1'
gem 'cancancan'

# font-awesome-rails provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.
gem "font-awesome-rails"

# PostgreSQL
gem 'pg', '~> 0.18.4'

# Puma web server
gem 'puma', '~> 3.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise'

# Bootstrap
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '>= 3.2'

# Use kaminari for pagination
gem "kaminari"

# Use friendly_id for preety urls
gem 'friendly_id', '~> 5.1.0'
gem 'font-awesome-sass'
gem 'devise-bootstrap-views'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'react-rails'

# Rails support for loadinf variables from .env file
gem 'dotenv-rails', groups: [:development, :test]

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

#group :test do
#  gem 'sass-rails', '~> 5.0'  gem 'bootstrap', '~> 4.0.0.alpha6'
#  gem 'sprockets-rails', :require => 'sprockets/railtie'
#  source 'https://rails-assets.org' do
#    gem 'rails-assets-tether', '>= 1.3.3'
#  end
#  gem 'byebug', platform: :mri
#end

group :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet', '~> 5.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
