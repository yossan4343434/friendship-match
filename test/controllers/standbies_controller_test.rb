require 'test_helper'

class StandbiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standby = standbies(:one)
  end

  test "should get index" do
    get standbies_url
    assert_response :success
  end

  test "should get new" do
    get new_standby_url
    assert_response :success
  end

  test "should create standby" do
    assert_difference('Standby.count') do
      post standbies_url, params: { standby: { date: @standby.date, user_id: @standby.user_id } }
    end

    assert_redirected_to standby_url(Standby.last)
  end

  test "should show standby" do
    get standby_url(@standby)
    assert_response :success
  end

  test "should get edit" do
    get edit_standby_url(@standby)
    assert_response :success
  end

  test "should update standby" do
    patch standby_url(@standby), params: { standby: { date: @standby.date, user_id: @standby.user_id } }
    assert_redirected_to standby_url(@standby)
  end

  test "should destroy standby" do
    assert_difference('Standby.count', -1) do
      delete standby_url(@standby)
    end

    assert_redirected_to standbies_url
  end
end
