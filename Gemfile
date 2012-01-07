source 'http://rubygems.org'

gem 'rails', '3.1.1'

gem 'therubyracer'
gem 'sqlite3'
gem 'haml'
gem 'haml-rails'
gem 'jquery-rails'
gem "paperclip", :git => 'git://github.com/thoughtbot/paperclip.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'rails-backbone', :git => 'git://github.com/codebrew/backbone-rails.git'
end

group :development do
  gem 'pry'
  gem 'awesome_print'
end

group :test, :development do
  gem 'rspec-rails'

  # gem 'rb-inotify'
  # gem 'libnotify'
  gem 'guard-coffeescript'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-bundler'

  gem 'active_reload'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false

  gem 'capybara'
  gem 'capybara-webkit'

  gem 'spork'
  gem 'database_cleaner'

  gem 'machinist', '>= 2.0.0.beta2'
  gem 'faker'
end
