class RenameUsuarioIdToAutorIdOnArtigos < ActiveRecord::Migration
  def change
    rename_column :artigos, :usuario_id, :autor_id
  end
end
