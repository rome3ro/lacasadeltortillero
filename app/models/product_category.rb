class ProductCategory < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :producto_details
end
