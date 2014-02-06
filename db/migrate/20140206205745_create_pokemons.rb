class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.integer :id_nacional
      t.string :nome
      t.integer :ataque
      t.integer :defesa

      t.timestamps
    end
  end
end
