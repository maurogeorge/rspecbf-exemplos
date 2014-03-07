class AddEscolhidoEmToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :escolhido_em, :datetime
  end
end
