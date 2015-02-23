class Acerca < ActiveRecord::Base
  attr_accessible :description, :image, :title, :acerca_clientes_attributes, :ultima_instalacions_attributes
  has_many :acerca_clientes,  :dependent => :destroy
  has_many :ultima_instalacions,  :dependent => :destroy

  mount_uploader :image, PhotoUploader

  accepts_nested_attributes_for :acerca_clientes, :allow_destroy => true
  accepts_nested_attributes_for :ultima_instalacions, :allow_destroy => true
end
