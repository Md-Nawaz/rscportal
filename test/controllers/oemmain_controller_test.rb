require 'test_helper'

class OemmainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oemmain_index_url
    assert_response :success
  end

  test "should get new" do
    get oemmain_new_url
    assert_response :success
  end

  test "should get create" do
    get oemmain_create_url
    assert_response :success
  end

  test "should get show" do
    get oemmain_show_url
    assert_response :success
  end

end
