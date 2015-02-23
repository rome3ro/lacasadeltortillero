class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :slide_image_1
      t.string :slide_image_2
      t.string :slide_image_3
      t.string :slide_image_4
      t.string :icon_title_1
      t.string :icon_description_1
      t.string :icon_title_2
      t.string :icon_description_2
      t.string :icon_title_3
      t.string :icon_description_3
      t.string :icon_title_4
      t.string :icon_description_4

      t.timestamps
    end
  end
end
