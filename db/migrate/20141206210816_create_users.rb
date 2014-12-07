class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :senha
      t.string :foto
      t.string :nomeCompleto
      t.string :cidade
      t.string :estado
      t.string :email
      t.text :descricao

      t.timestamps null: false
    end
  end
end
