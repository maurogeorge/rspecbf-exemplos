# -*- encoding : utf-8 -*-
module AcceptanceMacros
  def login!
    before(:each) do
      @current_user = User.make(:email => 'x@example.com', :password => 'senha123', :password_confirmation => 'senha123')
      visit new_user_session_path
      fill_in 'Email', :with => 'x@example.com'
      fill_in 'Senha', :with => 'senha123'
      click_button 'Entrar'
    end
  end
end

RSpec.configure do |config|
  config.extend AcceptanceMacros, :type => :request
end
