require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)

  require 'rspec/rails'
  # require 'shoulda'
  require 'database_cleaner'
  # require 'accept_values_for'
  require 'rails/test_help'
  require 'capybara/rspec'
  
  # Capybara.register_driver :selenium_chrome do |app|
  #   Capybara::Selenium::Driver.new(app, :browser => :chrome)
  # end
  # Capybara.default_driver = :selenium_chrome
  # Capybara.javascript_driver = :selenium_chrome
  # Capybara.default_selector = :css
  Capybara.default_driver = :rack_test
  Capybara.javascript_driver = :webkit
  Capybara.default_selector = :css

  DatabaseCleaner.strategy = :transaction

  RSpec.configure do |config|
    # config.mock_with :mocha
    config.use_transactional_fixtures = false

    config.before(:suite) do
      DatabaseCleaner.strategy = :truncation, { :except => %w(cities) }
    end

    config.before(:each) { DatabaseCleaner.start }
    config.after(:each) { DatabaseCleaner.clean }
  end
end

Spork.each_run do
  load "#{Rails.root}/config/routes.rb"
  Dir["#{Rails.root}/app/**/*.rb"].each { |f| load f }

  Dir.glob(File.join(Rails.root, '/spec/support/**/*.rb')).each do |file|
    require file
  end

  load "#{Rails.root}/spec/support/blueprints.rb"

  Machinist.reset_before_test
end

