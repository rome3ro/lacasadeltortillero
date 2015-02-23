ActiveAdmin.register ProductCategory do
  menu :label =>"Categorias", :priority => 7

  # show do
  # 	attributes_table do

  #        row :name
  #        row :description
  #        default_actions

  #       end
  # end


  index do
          column "ID", :id
          column "NOMBRE", :name
          column "DESCRIPCION", :description
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end

   form do |f|
    f.inputs "Categor&iacute;as" do

      f.input :name, :label => "Nombre"
      f.input :description, :label => "Descripci&oacute;n"

    end
    
    f.buttons
	end

end
