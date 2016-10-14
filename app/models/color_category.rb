# == Schema Information
#
# Table name: color_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ColorCategory < ApplicationRecord
  has_many :colors

  validates :name, presence: true, uniqueness: true
  scope :by_name, -> {order :name }
end
