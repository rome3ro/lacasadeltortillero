ActiveAdmin.register Home do
  #form :partial => "form" 
   menu :label =>"Home", :priority => 1
   actions :index, :edit, :update
   
   index do
         column "ID", :id
         column "CREADO", :created_at
         column "MODIFICADO", :updated_at
         default_actions

        end

   form :title => "Home" do |f|
        f.inputs "Slide" do
           #f.input :slide_image_1, :as => :file, :label => "Imagen #1"
           #f.input :slide_image_1, :label => "&nbsp;", :as => :url, :input_html => { :readonly => true }
           f.input :slide_image_1, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.slide_image_1.thumb.url) 
           f.input :slide_image_2, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.slide_image_2.thumb.url) 
           f.input :slide_image_3, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.slide_image_3.thumb.url) 
           f.input :slide_image_4, :as => :file, :required => false, :label=>'Imagen', :hint => f.template.image_tag(f.object.slide_image_4.thumb.url) 
         end
         f.inputs "Footer" do
            f.input :icon_title_1, :label => "T&iacute;tulo &iacute;cono #1"
            f.input :icon_description_1, :label => "Descripci&oacute;n &iacute;cono #1", :as => :text, :input_html => { :maxlength => "1000" }
            f.input :icon_title_2, :label => "T&iacute;tulo &iacute;cono #2"
            f.input :icon_description_2, :label => "Descripci&oacute;n &iacute;cono #2", :as => :text, :input_html => { :maxlength => "1000" }
            f.input :icon_title_3, :label => "T&iacute;tulo &iacute;cono #3"
            f.input :icon_description_3, :label => "Descripci&oacute;n &iacute;cono #3", :as => :text, :input_html => { :maxlength => "1000" }
            f.input :icon_title_4, :label => "T&iacute;tulo &iacute;cono #4"
            f.input :icon_description_4, :label => "Descripci&oacute;n &iacute;cono #4", :as => :text, :input_html => { :maxlength => "1000" }
          end
         f.buttons

       end
end
