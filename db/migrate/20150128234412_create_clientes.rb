class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :telefone
      t.string :endereço

      t.timestamps
    end
  end
end
