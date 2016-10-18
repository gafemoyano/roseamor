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
#  all_colors           :boolean          default(TRUE), not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
