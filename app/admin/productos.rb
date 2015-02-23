ActiveAdmin.register Producto do
  menu :label =>"Producto", :priority => 2
  #actions :index, :edit, :update

  form do |f|
    f.inputs "Cabecera" do

      f.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.image.thumb.url) 
      #f.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }

    end

    # f.inputs "Productos" do

    #   f.has_many :producto_details do |a|
    #      a.input :name, :label => "T&iacute;tulo"
    #      a.input :description, :label => "Descripci&oacute;n"
    #      a.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => a.template.image_tag(a.object.image.thumb.url) 
    #      #a.input :category_id, :as => :select, :include_blank => false, :collection => proc { Utilisateur.all }
    #      a.input :category_id, :as => :select, :include_blank => false, :collection => ProductCategory.all 
    #      #a.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }
    #   end 

    # end
    
    f.buttons
  end

   index do
          column "ID", :id
          column "IMAGEN", :image
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end

  

end
