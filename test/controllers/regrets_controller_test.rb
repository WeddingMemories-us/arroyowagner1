require 'test_helper'

class RegretsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regret = regrets(:one)
  end

  test "should get index" do
    get regrets_url
    assert_response :success
  end

  test "should get new" do
    get new_regret_url
    assert_response :success
  end

  test "should create regret" do
    assert_difference('Regret.count') do
      post regrets_url, params: { regret: { message: @regret.message, user_id: @regret.user_id } }
    end

    assert_redirected_to regret_url(Regret.last)
  end

  test "should show regret" do
    get regret_url(@regret)
    assert_response :success
  end

  test "should get edit" do
    get edit_regret_url(@regret)
    assert_response :success
  end

  test "should update regret" do
    patch regret_url(@regret), params: { regret: { message: @regret.message, user_id: @regret.user_id } }
    assert_redirected_to regret_url(@regret)
  end

  test "should destroy regret" do
    assert_difference('Regret.count', -1) do
      delete regret_url(@regret)
    end

    assert_redirected_to regrets_url
  end
end
