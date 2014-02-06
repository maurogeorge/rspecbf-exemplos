class AddUsuarioIdToArtigos < ActiveRecord::Migration
  def change
    add_column :artigos, :usuario_id, :integer
    add_index :artigos, :usuario_id
  end
end
