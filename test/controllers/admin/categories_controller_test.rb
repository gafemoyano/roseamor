require 'test_helper'

class Admin::CategoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup 
    @category = categories(:one)
    sign_in users(:one)
  end

  test "should get index" do    
    get admin_categories_url
    assert_response :success
  end

  test "should get edit" do    
    category = categories(:one)
    get edit_admin_category_url category
    assert_response :success
  end

  test "should get new" do    
    get new_admin_category_url
    assert_response :success
  end

  test 'should create a new category' do
    assert_difference 'Category.count' do
      post admin_categories_path, params: { category: { order: 30, name: 'new' } }    
    end
  end
  
  test "should update a current category" do
    patch admin_category_url(@category), params: { category: { order: 20, name: 'else' } }
    @category.reload
    assert_equal 'else', @category.name
    assert_equal 20, @category.order
  end
end
