require 'spec_helper'

describe Pokemon do

  describe '#nome_completo' do
    it 'exibe o nome e o id nacional' do
      pokemon = Pokemon.new(nome: 'Charizard', id_nacional: 6)
      pokemon_2 = Pokemon.new
      expect(pokemon.nome_completo).to eq('Charizard - 6')
      expect(pokemon_2.nome_completo).to be_nil
    end
  end
end
