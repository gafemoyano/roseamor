class AddAttachmentLogoToDistributors < ActiveRecord::Migration[5.0]
  def self.up
    change_table :distributors do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :distributors, :logo
  end
end
