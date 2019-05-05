require 'test_helper'

class Admin::HomeControllerControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @home = homes(:one)
    sign_in users(:one)
  end

  test 'should get home index view' do
    get admin_home_index_path
    assert_response :redirect
  end

  test 'should get the edit page' do
    get edit_admin_home_path(@home)
    assert_response :success
  end
end
