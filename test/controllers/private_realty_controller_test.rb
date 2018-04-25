require 'test_helper'

class PrivateRealtyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get private_realty_new_url
    assert_response :success
  end

  test "should get create" do
    get private_realty_create_url
    assert_response :success
  end

  test "should get edit" do
    get private_realty_edit_url
    assert_response :success
  end

  test "should get update" do
    get private_realty_update_url
    assert_response :success
  end

  test "should get index" do
    get private_realty_index_url
    assert_response :success
  end

  test "should get show" do
    get private_realty_show_url
    assert_response :success
  end

  test "should get destroy" do
    get private_realty_destroy_url
    assert_response :success
  end

end
