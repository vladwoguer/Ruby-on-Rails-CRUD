class CreateSalas < ActiveRecord::Migration[5.1]
  def change
    create_table :salas do |t|
      t.string :name

      t.timestamps
    end
  end
end
