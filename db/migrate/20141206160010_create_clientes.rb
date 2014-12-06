class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nomeCompleto
      t.string :cidade
      t.string :estado
      t.string :email
      t.text :descricao
      t.string :login
      t.string :senha
      t.string :foto

      t.timestamps
    end
  end
end
