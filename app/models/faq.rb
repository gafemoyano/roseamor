# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  question   :text             default(""), not null
#  answer     :text             default(""), not null
#  order      :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Faq < ApplicationRecord
  validates :question, presence: true, uniqueness: true
  validates :answer, presence: true
  scope :by_priority, -> { order order: :asc }
end
