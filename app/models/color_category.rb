# == Schema Information
#
# Table name: color_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order      :integer          default(99), not null
#

class ColorCategory < ApplicationRecord
  has_many :colors

  validates :name, presence: true, uniqueness: true
  validates :order, presence: true
  scope :by_priority, -> {order order: :asc, name: :asc }
end
