class UltimaInstalacion < ActiveRecord::Base
  attr_accessible :description, :image, :installation_date, :title

  belongs_to :acerca

  mount_uploader :image, PhotoUploader
end
