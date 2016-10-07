# == Schema Information
#
# Table name: colors
#
#  id                 :integer          not null, primary key
#  code               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Color < ApplicationRecord
  has_attached_file :image,
                    styles: { thumb: ["64x64#", :jpg] }
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates :code, presence: true, uniqueness: true
  validates :image, presence: true

  scope :by_code, -> { order(:code) }
end
