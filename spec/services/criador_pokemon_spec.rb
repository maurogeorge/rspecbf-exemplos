require 'spec_helper'

describe CriadorPokemon do

  describe '#criar' do

    before do
      arquivo_resposta = File.new('spec/fixtures/services/criador_pokemon/resposta.txt')
      stub_request(:get, 'http://pokeapi.co/api/v1/pokemon/6/')
      .to_return(arquivo_resposta)
    end

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
