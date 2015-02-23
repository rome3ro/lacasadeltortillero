class Producto < ActiveRecord::Base
  attr_accessible :image, :producto_details_attributes

  has_many :producto_details,  :dependent => :destroy

  belongs_to :product_category

  mount_uploader :image, PhotoUploader

  accepts_nested_attributes_for :producto_details, :allow_destroy => true

end
