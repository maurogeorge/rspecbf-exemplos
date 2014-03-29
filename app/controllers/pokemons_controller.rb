class PokemonsController < ApplicationController
  def update
    pokemon = Pokemon.find(params[:id])
    AtualizadorPokemon.new(pokemon).update!
    redirect_to pokemons_path
  end
end
