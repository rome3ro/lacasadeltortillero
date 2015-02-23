class ProductoController < ApplicationController
  def index

  	@producto = Producto.find(:first)

  	if !params[:tipo].nil?  		
  		
  		@details = ProductoDetail.where("category_id = ?", params[:tipo])
      @titulo = "Productos " + params[:producto]
  		

  	else

		#@details = @producto.producto_details

  	end

  end
end
