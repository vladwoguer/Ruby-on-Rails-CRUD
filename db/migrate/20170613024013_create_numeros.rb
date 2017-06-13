class CreateNumeros < ActiveRecord::Migration[5.1]
  def change
    create_table :numeros do |t|
      t.numeric :numero

      t.timestamps
    end
  end
end
