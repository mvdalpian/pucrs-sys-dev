require 'test_helper'

class SimuladorControllerTest < ActionController::TestCase
  test "should get simular" do
    get :simular
    assert_response :success
  end

end
