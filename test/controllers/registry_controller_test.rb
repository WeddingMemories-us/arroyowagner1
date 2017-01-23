require 'test_helper'

class RegistryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registry_index_url
    assert_response :success
  end

end
