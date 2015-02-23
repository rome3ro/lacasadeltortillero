class AddTelefonoToContacto < ActiveRecord::Migration
  def change
    add_column :contactos, :telefono, :string
  end
end
