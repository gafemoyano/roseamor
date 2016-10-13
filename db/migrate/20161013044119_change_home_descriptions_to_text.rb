class ChangeHomeDescriptionsToText < ActiveRecord::Migration[5.0]
  def change
    def change
      change_column :homes, :gallery_image_1_description, :text
      change_column :homes, :gallery_image_2_description, :text
      change_column :homes, :gallery_image_3_description, :text
      change_column :homes, :gallery_image_4_description, :text
      change_column :homes, :gallery_image_5_description, :text
      change_column :homes, :gallery_image_6_description, :text
    end
  end
end
