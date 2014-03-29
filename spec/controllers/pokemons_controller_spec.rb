require 'spec_helper'

describe PokemonsController do

  describe "PUT 'update'" do

    let!(:pokemon) do
      Pokemon.create!
    end

    it 'atualiza o Pokemon' do
      atualizador_pokemon = instance_double(AtualizadorPokemon)
      expect(AtualizadorPokemon).to receive(:new).with(pokemon)
        .and_return(atualizador_pokemon)
      expect(atualizador_pokemon).to receive(:update!)
      put :update, id: pokemon
    end
  end
end
