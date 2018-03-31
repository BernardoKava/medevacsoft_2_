require 'test_helper'

class DispatcherdashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dispatcherdash_index_url
    assert_response :success
  end

end
