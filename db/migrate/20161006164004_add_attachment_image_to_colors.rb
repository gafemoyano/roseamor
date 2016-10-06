class AddAttachmentImageToColors < ActiveRecord::Migration
  def self.up
    change_table :colors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :colors, :image
  end
end
