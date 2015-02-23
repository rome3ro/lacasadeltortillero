class AcercaCliente < ActiveRecord::Base
  attr_accessible :image
  belongs_to :acerca

  mount_uploader :image, PhotoUploader
end
