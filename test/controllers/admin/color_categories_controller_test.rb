require 'test_helper'

class Admin::ColorCategoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup 
    @color_category = categories(:one)
    sign_in users(:one)
  end

  test "should get index" do    
    get admin_color_categories_url
    assert_response :success
  end

  test "should edit a category" do    
    get edit_admin_color_category_url @color_category
    assert_response :success
  end

  test "should get create a new color category" do    
    get new_admin_color_category_url
    assert_response :success
  end

  test "should create a new color category" do
    assert_difference('ColorCategory.count') do
      post admin_color_categories_path, params: {color_category: {name: 'new', order: 23}}
    end
  end

  test "update a color category" do
    color_category = categories(:two)

    patch admin_color_category_url(color_category), params: { color_category: { name: 'another', order: 33 } }
    color_category.reload
    assert_response :redirect
  end
end
