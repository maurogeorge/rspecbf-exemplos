require 'spec_helper'

describe Pokemon do

  describe '#ataque_critico' do

    it 'é um valor aleatório' do
      allow(Random).to receive(:rand).and_return(75)
      pokemon = Pokemon.new
      expect(pokemon.ataque_critico).to eq(75)
    end
  end
end
