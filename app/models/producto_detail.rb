class ProductoDetail < ActiveRecord::Base
  attr_accessible :description, :image, :name, :producto_id, :category_id

  belongs_to :producto

  mount_uploader :image, PhotoUploader

end
