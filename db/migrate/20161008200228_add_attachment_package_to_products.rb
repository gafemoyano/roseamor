class AddAttachmentPackageToProducts < ActiveRecord::Migration[5.0]
  def self.up
    change_table :products do |t|
      t.attachment :package
    end
  end

  def self.down
    remove_attachment :products, :package
  end
end
