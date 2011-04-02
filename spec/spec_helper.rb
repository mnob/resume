ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

# Factories
["education", "employment", "talents", "matte"].each do |f|
  require Rails.root.join("spec/factories/#{f}")
end

# Custom RSpec Matchers
require Rails.root.join('spec/support/matchers')

RSpec.configure do |config|
  config.mock_with :rspec
  config.include(EducationMatchers)
  config.include(EmploymentMatchers)
  config.include(TalentMatchers)

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true
end