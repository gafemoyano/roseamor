# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order      :integer          default(99), not null
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'should not save category without name' do
    category = Category.new
    assert_not category.save, 'Saved the category without a name'
  end

  test 'should not save category without unique name' do
    category = Category.new(name: 'name')
    category.save
    same_name_category = Category.new name: 'name'
    assert_not same_name_category.save, 'Saved the category without a unique name'
  end
end
