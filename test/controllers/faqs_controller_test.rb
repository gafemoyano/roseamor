require 'test_helper'

class FaqsControllerTest < ActionDispatch::IntegrationTest
  test "should get faq page" do
    get faqs_url
    assert_response :success
  end
end
