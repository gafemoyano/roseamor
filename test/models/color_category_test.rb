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

require 'test_helper'

class ColorCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
