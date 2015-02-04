class AddUsuarioIdToMaterias < ActiveRecord::Migration
  def change
    add_column :materias, :usuario_id, :integer
    add_index :materias, :usuario_id
  end
end
