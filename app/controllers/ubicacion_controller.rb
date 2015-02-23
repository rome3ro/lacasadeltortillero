class UbicacionController < ApplicationController
  def index
  	@ubicacion = Ubicacion.find(:first)
	@ubicacion_details = UbicacionDetail.where("ubicacion_id = ?", @ubicacion.id)
  end
end
