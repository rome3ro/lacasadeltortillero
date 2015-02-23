class CreateCorreos < ActiveRecord::Migration
  def change
    create_table :correos do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :message

      t.timestamps
    end
  end
end
