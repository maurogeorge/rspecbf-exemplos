require 'spec_helper'

describe Pokemon do

  fixtures :pokemons

  describe '#nome_completo' do
    it 'exibe o nome e o id nacional' do
      pokemon = pokemons(:charizard)
      expect(pokemon.nome_completo).to eq('Charizard - 6')
    end
  end
end
