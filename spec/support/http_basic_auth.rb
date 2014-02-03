module AuthSpec
  def http_basic_login!
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials('usuario','senha')
  end
end

module CapybaraAuthSpec
  def http_basic_login!
    name = 'usuario'
    password = 'senha'
    if page.driver.respond_to?(:basic_auth)
      page.driver.basic_auth(name, password)
    elsif page.driver.respond_to?(:basic_authorize)
      page.driver.basic_authorize(name, password)
    elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
      page.driver.browser.basic_authorize(name, password)
    else
      raise "I don't know how to log in!"
    end
  end
end

RSpec.configure do |config|
  config.include AuthSpec, type: :controller
  config.include CapybaraAuthSpec, type: :request
end
