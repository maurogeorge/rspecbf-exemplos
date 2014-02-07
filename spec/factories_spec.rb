require 'spec_helper'

describe 'FactoryGirl' do
  FactoryGirl.factories.map(&:name).each do |factory_nome|
    it "factory #{factory_nome} is valid" do
      factory = build(factory_nome)

      if factory.respond_to?(:valid?)
        expect(factory).to be_valid
      end
    end
  end
end
