require 'test_helper'

class ConditionControllerTest < ActionController::TestCase

  test "should get output" do
    get :output
    assert_response :success
  end

end
