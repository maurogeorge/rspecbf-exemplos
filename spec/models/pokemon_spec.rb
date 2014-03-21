require 'spec_helper'

describe Pokemon do

  describe 'validações' do

    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:id_nacional) }
  end
end
