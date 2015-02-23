ActiveAdmin.register Ubicacion do
  menu :label =>"Ubicacion", :priority => 4
  #actions :index, :edit, :update, :new

  form do |f|
    f.inputs "Ubicaci&oacute;n" do

      f.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.image.thumb.url) 
      #f.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }

    end

    f.inputs "Sucursales" do

      f.has_many :ubicacion_details do |a|
      
         #:address, :cellphone, :fax, :google_map, :image, :name, :telephone
         a.input :name, :label => "T&iacute;tulo"
         a.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => a.template.image_tag(a.object.image.thumb.url) 
         a.input :address, :label => "Direcci&oacute;n"
         a.input :cellphone, :label => "Celular"
         a.input :telephone, :label => "Tel&eacute;fono"
         a.input :fax, :label => "Fax"
         a.input :google_map, :label => "Google Maps", :as => :text, :input_html => { :maxlength => "1000" }
         #a.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }
      end 

    end
    
    f.buttons
  end

   index :label => "qs" do
          column "ID", :id
          column "IMAGEN", :image
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end

end
