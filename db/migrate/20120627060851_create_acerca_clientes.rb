class CreateAcercaClientes < ActiveRecord::Migration
  def change
    create_table :acerca_clientes do |t|
      t.string :image
      t.integer :acerca_id
      t.timestamps
    end
  end
end
