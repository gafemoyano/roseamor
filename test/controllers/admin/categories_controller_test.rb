require 'test_helper'

class Admin::CategoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in users(:one)
    get admin_categories_url
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    category = categories(:one)
    get edit_admin_category_url category
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_admin_category_url
    assert_response :success
  end

end
