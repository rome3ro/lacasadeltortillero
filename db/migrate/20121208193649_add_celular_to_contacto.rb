class AddCelularToContacto < ActiveRecord::Migration
  def change
    add_column :contactos, :celular, :string
  end
end
