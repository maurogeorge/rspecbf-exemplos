require 'capybara/rspec'
require 'capybara/rails'

RSpec.configure do |config|
  config.include Capybara::DSL, :example_group => { :file_path => /\bspec\/acceptance\// }
end
