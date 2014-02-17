require 'spec_helper'

describe Pokemon do

  describe '#nome_completo' do
    it 'exibe o nome e o id nacional' do
      pokemon = Pokemon.new(nome: 'Charizard', id_nacional: 6)
      expect(pokemon.nome_completo).to eq('Charizard - 6')
    end
  end
end
