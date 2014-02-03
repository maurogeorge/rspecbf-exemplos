require 'capybara/rspec'
require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
RSpec.configure do |config|
  config.include Capybara::DSL, :example_group => { :file_path => /\bspec\/acceptance\// }
end
