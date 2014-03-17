require 'spec_helper'

describe Pokemon do

  describe 'validações' do

    it { expect(Pokemon).to valida_presenca_de_string :nome }
  end
end
