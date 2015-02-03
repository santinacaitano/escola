class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :nome
      t.string :email
      t.string :perfil
      t.string :status

      t.timestamps
    end
  end
end
