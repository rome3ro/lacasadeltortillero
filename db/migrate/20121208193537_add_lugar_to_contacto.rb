class AddLugarToContacto < ActiveRecord::Migration
  def change
    add_column :contactos, :lugar, :string
  end
end
