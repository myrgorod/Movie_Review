require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get movies" do
    get admin_movies_url
    assert_response :success
  end

  test "should get users" do
    get admin_users_url
    assert_response :success
  end

  test "should get show_movie" do
    get admin_show_movie_url
    assert_response :success
  end
end
