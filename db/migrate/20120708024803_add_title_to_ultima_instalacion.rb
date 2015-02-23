class AddTitleToUltimaInstalacion < ActiveRecord::Migration
  def change
    add_column :ultima_instalacions, :title, :string
  end
end
