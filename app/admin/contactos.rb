ActiveAdmin.register Contacto do
  menu :label =>"Contacto", :priority => 5
  actions :index, :edit, :update

  form do |f|
    f.inputs "Contacto" do

      f.input :email_to, :label => "Email"
      f.input :telefono, :label => "Telefono"
      f.input :celular, :label => "Celular"
      f.input :lugar, :label => "Lugar"

      #f.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.image.thumb.url) 
      #f.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }

    end

    
    
    f.buttons
  end

  index do
          column "ID", :id
          column "IMAGEN", :image
          column "EMAIL", :email_to
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end

end
