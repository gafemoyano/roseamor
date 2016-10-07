# == Schema Information
#
# Table name: distributors
#
#  id           :integer          not null, primary key
#  name         :string
#  phone        :string
#  phone2       :string
#  phone3       :string
#  mail         :string
#  website      :string
#  address      :string
#  logo_url     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_code :string           not null
#

require 'test_helper'

class DistributorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
