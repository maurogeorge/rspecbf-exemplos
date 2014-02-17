require 'spec_helper'

describe Pokemon do

  describe '#nome_completo' do

    it 'exibe o nome e o id nacional quando possui os valores' do
      pokemon = Pokemon.new(nome: 'Charizard', id_nacional: 6)
      expect(pokemon.nome_completo).to eq('Charizard - 6')
    end

    it 'é nil quando não possui o nome e o id nacional' do
      pokemon = Pokemon.new
      expect(pokemon.nome_completo).to be_nil
    end
  end
end
