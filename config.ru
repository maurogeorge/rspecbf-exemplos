# This file is used by Rack-based servers to start the application.

# Run GC each 10 requests
require "unicorn/oob_gc"
use Unicorn::OobGC, 10

# Unicorn Worker Killer Configuration:
#
require "unicorn/worker_killer"

# Max requests per worker
max_request_min =  ENV['MAX_REQUEST_MIN'].to_i || 3072
max_request_max =  ENV['MAX_REQUEST_MAX'].to_i || 4096
use Unicorn::WorkerKiller::MaxRequests, max_request_min, max_request_max

# Max memory size (RSS) per worker
oom_min = ((ENV['OOM_MIN'].to_i || 192) * (1024**2))
oom_max = ((ENV['OOM_MAX'].to_i || 216) * (1024**2))
use Unicorn::WorkerKiller::Oom, oom_min, oom_max
require ::File.expand_path('../config/environment',  __FILE__)
#Run heroku config:add CANONICAL_HOST=yourdomain.com
#For more information, see: https://github.com/tylerhunt/rack-canonical-host#usage
use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

run Rails.application
