class AddInstallationDateToUltimaInstalacion < ActiveRecord::Migration
  def change
    add_column :ultima_instalacions, :installation_date, :date
  end
end
