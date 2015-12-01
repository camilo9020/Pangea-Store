require 'test_helper'

class Admin::DashboardControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
