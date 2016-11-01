require 'test_helper'

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get portal_home_url
    assert_response :success
  end

end
