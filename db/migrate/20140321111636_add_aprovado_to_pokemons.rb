class AddAprovadoToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :aprovado, :boolean, default: false
  end
end
