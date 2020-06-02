require 'test_helper'

class RanksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ranks_index_url
    assert_response :success
  end

  test "should get show" do
    get ranks_show_url
    assert_response :success
  end

  test "should get new" do
    get ranks_new_url
    assert_response :success
  end

  test "should get edit" do
    get ranks_edit_url
    assert_response :success
  end

end
