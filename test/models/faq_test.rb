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

require 'test_helper'

class FaqTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
