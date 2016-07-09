require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get review_create_url
    assert_response :success
  end

  test "should get show" do
    get review_show_url
    assert_response :success
  end

end
