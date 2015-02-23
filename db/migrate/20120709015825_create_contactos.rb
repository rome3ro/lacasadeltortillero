class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :image
      t.string :email_to

      t.timestamps
    end
  end
end
