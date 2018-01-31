require 'test_helper'

class ChomperControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chomper_new_url
    assert_response :success
  end

end
