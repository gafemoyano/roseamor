class AddAttachmentGalleryImage1ToHomes < ActiveRecord::Migration
  def self.up
    change_table :homes do |t|
      t.attachment :gallery_image_1
      t.attachment :gallery_image_2
      t.attachment :gallery_image_3
      t.attachment :gallery_image_4
      t.attachment :gallery_image_5
      t.attachment :gallery_image_6

      t.attachment :slider_image_1
      t.attachment :slider_image_2
      t.attachment :slider_image_3
      t.attachment :slider_image_4
    end
  end

  def self.down
    remove_attachment :homes, :gallery_image_1
    remove_attachment :homes, :gallery_image_2
    remove_attachment :homes, :gallery_image_3
    remove_attachment :homes, :gallery_image_4
    remove_attachment :homes, :gallery_image_5
    remove_attachment :homes, :gallery_image_6

    remove_attachment :homes, :slider_image_1
    remove_attachment :homes, :slider_image_2
    remove_attachment :homes, :slider_image_3
    remove_attachment :homes, :slider_image_4
  end
end
