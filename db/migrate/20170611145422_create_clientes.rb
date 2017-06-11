class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.boolean :ativo
      t.date :nascimento
      t.datetime :cadastro
      t.float :altura

      t.timestamps
    end
  end
end
