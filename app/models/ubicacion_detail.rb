class UbicacionDetail < ActiveRecord::Base
  attr_accessible :address, :cellphone, :fax, :google_map, :image, :name, :telephone, :ubicacion_id

  belongs_to :ubicacion

  mount_uploader :image, PhotoUploader
end
