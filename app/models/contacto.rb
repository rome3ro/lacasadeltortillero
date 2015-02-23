class Contacto < ActiveRecord::Base
  attr_accessible :email_to, :image, :celular, :telefono, :lugar

  mount_uploader :image, PhotoUploader
end
