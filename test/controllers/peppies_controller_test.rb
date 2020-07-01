require 'test_helper'

class PeppiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peppies_index_url
    assert_response :success
  end

end
