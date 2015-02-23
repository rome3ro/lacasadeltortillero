class ContactoController < ApplicationController
  def index
  	@contacto = Contacto.find(:first)
  	@correo = Correo.new
  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacto }
  	end
  end

  def enviar
    #@contacto = Contacto.find(params[:id])
    #puts "ENTROOOOOOOOOOOOOOOOOOO"
    #puts params[:correo].inspect
     @correo = Correo.new(params[:correo])
    # @correo.email = params[:email]
    # @correo.name = params[:name]
    # @correo.telephone = params[:telephone]
    # @correo.message = params[:message]
    @correo.save
    UserMailer.contacto_email(@correo).deliver
    
  	respond_to do |format|
      format.html { redirect_to contacto_url }
      #format.json { head :ok }
      format.json { render json: @correo.errors, status: :unprocessable_entity }
    end
  end

end
