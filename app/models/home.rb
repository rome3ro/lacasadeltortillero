class Home < ActiveRecord::Base
  attr_accessible :icon_description_1, :icon_description_2, :icon_description_3, :icon_description_4, :icon_title_1, :icon_title_2, :icon_title_3, :icon_title_4, :slide_image_1, :slide_image_2, :slide_image_3, :slide_image_4

  mount_uploader :slide_image_1, PhotoUploader
  mount_uploader :slide_image_2, PhotoUploader
  mount_uploader :slide_image_3, PhotoUploader
  mount_uploader :slide_image_4, PhotoUploader
end
