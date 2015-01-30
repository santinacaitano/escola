class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :turno
      t.string :sala
      t.string :materia
      t.string :professor

      t.timestamps
    end
  end
end
