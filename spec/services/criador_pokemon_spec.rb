require 'spec_helper'

describe CriadorPokemon do

  describe '#criar' do

    let(:criador_pokemon) do
      CriadorPokemon.new(6)
    end

    it 'cria um novo pokemon' do
      expect do
        criador_pokemon.criar
      end.to change{ Pokemon.count }.by(1)
    end

    describe 'pokemon criado' do

      before do
        criador_pokemon.criar
      end

      subject do
        Pokemon.last
      end

      it 'possui o nome correto' do
        expect(subject.nome).to eq('Charizard')
      end
    end
  end
end

