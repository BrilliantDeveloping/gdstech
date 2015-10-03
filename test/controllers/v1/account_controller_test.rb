require 'test_helper'

class V1::AccountControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
