class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :gallery_image_1_title
      t.string :gallery_image_1_description

      t.string :gallery_image_2_title
      t.string :gallery_image_2_description

      t.string :gallery_image_3_title
      t.string :gallery_image_3_description

      t.string :gallery_image_4_title
      t.string :gallery_image_4_description

      t.string :gallery_image_5_title
      t.string :gallery_image_5_description

      t.string :gallery_image_6_title
      t.string :gallery_image_6_description

      t.timestamps
    end
  end
end
