class AddCategoryIdToProductoDetails < ActiveRecord::Migration
  def change
    add_column :producto_details, :category_id, :integer
  end
end
