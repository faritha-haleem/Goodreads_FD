require 'test_helper'

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get author_show_url
    assert_response :success
  end

  test "should get home" do
    get author_home_url
    assert_response :success
  end

end
