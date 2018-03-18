require 'test_helper'

class DistributorsControllerTest < ActionDispatch::IntegrationTest
  test "should get all distributors" do
    get distributors_url, xhr: true
    assert_response :success
  end

  test "should get all distributors by country" do
    get distributors_url(country: 'CO'), xhr: true
    assert_response :success
  end
end
