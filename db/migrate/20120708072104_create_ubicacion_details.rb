class CreateUbicacionDetails < ActiveRecord::Migration
  def change
    create_table :ubicacion_details do |t|
      t.string :image
      t.string :google_map
      t.string :name
      t.string :address
      t.string :telephone
      t.string :cellphone
      t.string :fax
      t.integer :ubicacion_id

      t.timestamps
    end
  end
end
