require 'test_helper'

class Admin::FaqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    user= users(:one)
    sign_in user
  end

  test "should get faq index" do
    get admin_faqs_url
    assert_response :success
  end
end
