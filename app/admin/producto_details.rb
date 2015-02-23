ActiveAdmin.register ProductoDetail do
  menu :label =>"Productos", :priority => 9
  #actions :index, :edit, :update

  form do |f|
    f.inputs "Producto" do
      f.input :name, :label => "T&iacute;tulo"
         f.input :description, :label => "Descripci&oacute;n", :as => :text, :input_html => { :maxlength => "1000"}
         f.input :image, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.image.thumb.url) 
         #a.input :category_id, :as => :select, :include_blank => false, :collection => proc { Utilisateur.all }
         f.input :category_id, :as => :select, :include_blank => false, :collection => ProductCategory.all 
         #a.input :image, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }
    end
f.buttons
   end

   index do
          column "ID", :id
          column "TITULO", :name
          column "IMAGEN", :image
          column "CREADO", :created_at
          column "MODIFICADO", :updated_at
          default_actions

   end

end
