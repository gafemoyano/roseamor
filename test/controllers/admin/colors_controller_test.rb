require 'test_helper'

class Admin::ColorsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup 
    @color = colors(:one)
    @category = color_categories(:one)
    sign_in users(:one)
  end

  test "should get colors index" do    
    get admin_colors_url
    assert_response :success
  end

  test "should edit a color" do    
    get edit_admin_color_url @color
    assert_response :success
  end

  test "should get create a new color" do    
    get new_admin_color_url
    assert_response :success
  end

  test "should create a new color" do
    image = fixture_file_upload("files/pic.jpeg", "image/jpeg")
    assert_difference('Color.count') do
      post admin_colors_url, params: {color: {code: 'B-1', color_category_id: @category.id, image: image  }}
    end
  end

  test "update a color" do
    image = fixture_file_upload("files/pic.jpeg", "image/jpeg")
    color = colors(:two)

    patch admin_color_url(color), params: { color: { code: 'white', color_category_id: @category.id, image: image  }}
    color.reload
    assert_response :redirect, color.errors.full_messages.to_sentence
    assert_equal 'white', color.code
  end
end
