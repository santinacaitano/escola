class CreateMaterias < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :descricao
      t.string :professor
      t.string :curso

      t.timestamps
    end
  end
end
