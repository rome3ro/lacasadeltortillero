class UserMailer < ActionMailer::Base
  default from: "admin@lacasadeltortillero.com.mx"

  def contacto_email(correo)
    @correo = correo
    @contacto = Contacto.find(:first)
    #@url  = "http://example.com/login"
    mail(:to => @contacto.email_to, :subject => "Mensaje contacto")
  end

end
