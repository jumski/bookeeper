source 'http://rubygems.org'

gem 'rails', '3.1.3'
# gem 'sorcery'

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
  gem 'rdoc-tags'
  gem 'libnotify'
end

group :test, :development do
  gem 'rspec-rails'

  gem 'guard-coffeescript'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-shell'

  gem 'active_reload'

  gem 'machinist', '2.0.0'
  gem 'faker'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false

  gem 'capybara'
  gem 'capybara-webkit'

  gem 'spork', '0.9.0.rc9'
  gem 'database_cleaner'

  gem 'launchy'
  gem 'mocha'
end
