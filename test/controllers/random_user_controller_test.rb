require 'test_helper'

class RandomUserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get random_user_new_url
    assert_response :success
  end

  test 'an authenticated user should get success' do
    
    sign_in users(:one)
    get random_user_new_url
    assert_response :redirect
  end

end
