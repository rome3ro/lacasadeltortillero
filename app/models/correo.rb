class Correo < ActiveRecord::Base
  attr_accessible :email, :message, :name, :telephone

  validates_presence_of :email, :message, :name, :telephone, :message => "Todos los campos son requeridos."
end
