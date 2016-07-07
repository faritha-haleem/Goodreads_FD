require 'test_helper'

class PublisherControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get publisher_show_url
    assert_response :success
  end

  test "should get home" do
    get publisher_home_url
    assert_response :success
  end

end
