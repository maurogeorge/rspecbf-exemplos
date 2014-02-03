require 'spec_helper'

describe CriadorPokemon do

  describe '#criar' do

    before do
      body = '{' \
        '  "name": "Charizard"' \
        '}'
      stub_request(:get, 'http://pokeapi.co/api/v1/pokemon/6/')
      .to_return(status: 200, body: body, headers: {})
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

