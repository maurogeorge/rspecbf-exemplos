require 'spec_helper'

describe Pokemon do

  describe '#nome_completo' do

    let(:pokemon) do
      build(:pokemon)
    end

    subject do
      pokemon.nome_completo
    end

    it 'exibe o nome e o id nacional' do
      expect(subject).to eq('Charizard - 6')
    end
  end
end
