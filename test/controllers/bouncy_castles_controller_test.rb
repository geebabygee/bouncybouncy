require 'test_helper'

class BouncyCastlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bouncy_castles_index_url
    assert_response :success
  end

  test "should get show" do
    get bouncy_castles_show_url
    assert_response :success
  end

  test "should get new" do
    get bouncy_castles_new_url
    assert_response :success
  end

  test "should get create" do
    get bouncy_castles_create_url
    assert_response :success
  end

  test "should get edit" do
    get bouncy_castles_edit_url
    assert_response :success
  end

  test "should get update" do
    get bouncy_castles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bouncy_castles_destroy_url
    assert_response :success
  end

end
