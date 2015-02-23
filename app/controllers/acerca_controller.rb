class AcercaController < ApplicationController
  def index
  	@acerca = Acerca.find(:first)

  end

 

end
