class CreateAcercas < ActiveRecord::Migration
  def change
    create_table :acercas do |t|
      t.string :image
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
