class CreateUltimaInstalacions < ActiveRecord::Migration
  def change
    create_table :ultima_instalacions do |t|
      t.string :description
      t.string :image
      t.integer :acerca_id
      t.timestamps
    end
  end
end
