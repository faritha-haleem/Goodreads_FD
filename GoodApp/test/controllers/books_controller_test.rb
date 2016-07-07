require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get books_show_url
    assert_response :success
  end

  test "should get review" do
    get books_review_url
    assert_response :success
  end

  test "should get rate" do
    get books_rate_url
    assert_response :success
  end

end
