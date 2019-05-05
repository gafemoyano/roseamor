require 'test_helper'

class Admin::DistributorsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup 
    @distributor = distributors(:one)
    sign_in users(:one)
  end

  test "should get index" do    
    get admin_distributors_url
    assert_response :success
  end

  test "should edit a distributor" do    
    get edit_admin_distributor_url @distributor
    assert_response :success
  end

  test "should get create a new distributor" do    
    get new_admin_distributor_url
    assert_response :success
  end

  test "should create a new distributor" do
    logo = fixture_file_upload("files/pic.jpeg", "image/jpeg")
    assert_difference('Distributor.count') do
      post admin_distributors_url, params: {distributor: {name: 'distributor', country_code: 'CO', phone: '12345', mail: 'd@roseamor.com', website: 'roseamor.com', address: 'calle 123', logo: logo }}
    end
  end

  test "update a distributor" do
    logo = fixture_file_upload("files/pic.jpeg", "image/jpeg")

    patch admin_distributor_url(@distributor),  params: {distributor: {name: 'other', phone: '12345', mail: 'd@roseamor.com', website: 'roseamor.com', address: 'calle 123', logo: logo }}
    @distributor.reload
    assert_response :redirect
    assert_equal 'other', @distributor.name
  end
end
