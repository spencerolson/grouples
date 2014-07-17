# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'database_cleaner'
require 'shoulda/matchers'
# require 'coveralls'
# Coveralls.wear!('rails')

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

Monban.test_mode!

RSpec.configure do |config|

  config.include Capybara::DSL

  config.mock_with :rspec

  config.include Monban::Test::Helpers, type: :feature
  config.include Monban::Test::ControllerHelpers, type: :controller

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
    require "#{Rails.root}/db/seeds.rb"
  end

  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
     Monban.test_reset!
     DatabaseCleaner.clean
  end
end
