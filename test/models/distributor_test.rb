# == Schema Information
#
# Table name: distributors
#
#  id                :integer          not null, primary key
#  name              :string
#  phone             :string
#  phone2            :string
#  phone3            :string
#  mail              :string
#  website           :string
#  address           :string
#  logo_url          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  country_code      :string           not null
#  logo_file_name    :string
#  logo_content_type :string
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#

require 'test_helper'

class DistributorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
