require 'test_helper'

class DealerportalControllerTest < ActionDispatch::IntegrationTest
  test "should get payroll" do
    get dealerportal_payroll_url
    assert_response :success
  end

end
