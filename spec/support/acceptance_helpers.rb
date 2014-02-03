# -*- encoding : utf-8 -*-
module AcceptanceHelpers
  def saop
    save_and_open_page
  end
  def handle_js_confirm(message = nil, accept = true)
    page.execute_script("window.original_confirm_function = window.confirm")
    page.execute_script("window.confirm = function(msg) { $.cookie('confirm_message', msg); return #{!!accept}; }")
    yield
    page.evaluate_script("$.cookie('confirm_message')").should == message unless message.nil?
  ensure
    page.evaluate_script "window.confirm = window.original_confirm_function"
  end
  def fill_in_autocomplete(capybara_selector, jquery_selector, value)
    fill_in capybara_selector, :with => value
    page.execute_script %Q{$('#{jquery_selector}').keydown()}
  end
  def choose_autocomplete(text)
    find('ul.ui-autocomplete').should have_content(text)
    page.execute_script("$('.ui-menu-item:contains(\"#{text}\")').find('a').trigger('mouseenter').click()")
  end
end

RSpec.configure do |config|
  config.include AcceptanceHelpers, :type => :request
end
