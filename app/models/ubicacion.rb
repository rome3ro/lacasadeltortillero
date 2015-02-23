class Ubicacion < ActiveRecord::Base
  attr_accessible :image, :ubicacion_details_attributes

  has_many :ubicacion_details,  :dependent => :destroy

  mount_uploader :image, PhotoUploader

  accepts_nested_attributes_for :ubicacion_details, :allow_destroy => true
end
