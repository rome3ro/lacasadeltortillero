class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_product_categories

  private
 
  def load_product_categories
    @categories = ProductCategory.all
  end

	def after_sign_in_path_for(resource)
		
  		# if resource.is_AdminUser?
    # 		some_admin_path
  		# else
    # 		some_non_admin_path
  		# end
  		"/admin/productos"
	end
end
