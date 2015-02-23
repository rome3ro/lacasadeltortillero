class CreateProductoDetails < ActiveRecord::Migration
  def change
    create_table :producto_details do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :producto_id

      t.timestamps
    end
  end
end
