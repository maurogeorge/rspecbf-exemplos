# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
#Run heroku config:add CANONICAL_HOST=yourdomain.com
#For more information, see: https://github.com/tylerhunt/rack-canonical-host#usage
use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

run Rails.application
