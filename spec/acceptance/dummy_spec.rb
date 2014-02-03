# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "Homepage", :type => :request do
  xit {
    visit root_path
    page.should have_content('Copyright &copy; 2012 App')
  }
end
