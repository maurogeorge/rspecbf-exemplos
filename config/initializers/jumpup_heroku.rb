Jumpup::Heroku.configure do |config|
  config.app = 'rspecbf-exemplos'
end if Rails.env.development?