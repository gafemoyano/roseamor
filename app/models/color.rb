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
#  color_category_id  :integer
#

class Color < ApplicationRecord
  belongs_to :color_category, touch: true
  has_attached_file :image,
                    styles: { thumb: ['200x121#', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }
  validates_attachment :image,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  validates :code, presence: true, uniqueness: true
  validates :image, presence: true
  validates :color_category, presence: true


  scope :by_code, -> { order(:code) }
end
