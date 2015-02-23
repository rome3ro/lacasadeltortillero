ActiveAdmin.register Correo do
  #menu :label =>"Producto"
  actions :index, :show

  show do
  	attributes_table do

         row :email
         row :telephone
         row :message
         #default_actions

        end
  end


  index do
          column "ID", :id
          column "NOMBRE", :name
          column "EMAIL", :email
          column "TELEFONO", :telephone
          column "MENSAJE", :message
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end


end
