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

require 'test_helper'

class ColorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
