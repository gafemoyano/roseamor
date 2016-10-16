# == Schema Information
#
# Table name: products
#
#  id                   :integer          not null, primary key
#  name                 :string
#  category_id          :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  image_file_name      :string
#  image_content_type   :string
#  image_file_size      :integer
#  image_updated_at     :datetime
#  diameter             :decimal(, )
#  height               :decimal(, )
#  package_file_name    :string
#  package_content_type :string
#  package_file_size    :integer
#  package_updated_at   :datetime
#  description          :text
#

class Product < ApplicationRecord
  belongs_to :category
  has_attached_file :image,
                    styles: { thumb: ['200x121>', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' }

  has_attached_file :package,
                    styles: { thumb: ['200x121>', :jpg],
                              medium: ['855x519#', :jpg],
                              original: ['1287x782>', :jpg]},
                    convert_options: { thumb: '-quality 75 -strip',
                                       original: '-quality 85 -strip' },
                    :default_url => '/images/:style/missing.png'


  validates_attachment :image,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }

  validates_attachment :package,
                       content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'image/webp'] }
  validates :category, presence: true
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  scope :by_name, -> { order(:name) }

  def dimensions
    if self.diameter.nil? || self.height.nil?
      "N/A"
    else
      "#{self.diameter}cm x #{self.height}cm"
    end
  end
end
