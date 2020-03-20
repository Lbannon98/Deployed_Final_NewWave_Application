require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    sign_in editors(:one)
  end

  test "should get show" do
    get profiles_url
    assert_response :success
  end

end
