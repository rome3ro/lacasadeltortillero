ActiveAdmin.register Acerca do
  menu :label =>"Acerca", :priority => 3
   actions :index, :edit, :update

  form do |f|
    f.inputs "Acerca" do

      f.input :title, :label => "T&iacute;tulo"
      f.input :description, :label => "Descripci&oacute;n", :as => :text, :input_html => { :maxlength => "1000" }
      f.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.image.thumb.url) 
      #f.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }

    end

    f.inputs "Clientes" do

      f.has_many :acerca_clientes do |a|
      
         a.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => a.template.image_tag(a.object.image.thumb.url) 
         #a.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }
      end 

    end

    f.inputs "Ultimas Instalaciones" do
      
      f.has_many :ultima_instalacions do |a|

        a.input :installation_date, :as=> :datepicker, :label => "Fecha"
        a.input :title, :label => "T&iacute;tulo"
        a.input :description, :label => "Descripci&oacute;n"
        a.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => a.template.image_tag(a.object.image.thumb.url) 
        #a.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }
              
      end

    end
    
    f.buttons
  end

   index do
          column "ID", :id
          column "IMAGEN", :image
          column "TITULO", :title
          column "DESCRIPCION", :description
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end

end

