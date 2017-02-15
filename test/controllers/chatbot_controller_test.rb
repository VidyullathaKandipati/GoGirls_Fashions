require 'test_helper'

class ChatbotControllerTest < ActionController::TestCase
  test "should get chat" do
    get :chat
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
