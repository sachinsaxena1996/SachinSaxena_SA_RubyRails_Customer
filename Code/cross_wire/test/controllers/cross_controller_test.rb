require 'test_helper'

class CrossControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get cross_home_url
    assert_response :success
  end

end
