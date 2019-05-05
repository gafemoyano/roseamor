require 'test_helper'

class Admin::FaqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faq = faqs(:one)
    user= users(:one)
    sign_in user
  end

  test "should get faq index" do
    get admin_faqs_url
    assert_response :success
  end

  test "should edit a faq" do    
    get edit_admin_faq_url @faq
    assert_response :success
  end

  test "should get a new faq" do    
    get new_admin_faq_url
    assert_response :success
  end

  test "should create a new faq" do
    assert_difference('Faq.count') do
      post admin_faqs_url, params: {faq: {question: 'q', answer: 'b', order: 3  }}
    end
  end

  test "update a faq" do
    patch admin_faq_url(@faq),  params: {faq: {question: 'q2', answer: 'b2', order: 10  }}
    @faq.reload
    assert_response :redirect
    assert_equal 'q2', @faq.question
    assert_equal 'b2', @faq.answer
    assert_equal 10, @faq.order
  end
end
