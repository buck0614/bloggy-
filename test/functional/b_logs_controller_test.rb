require 'test_helper'

class BLogsControllerTest < ActionController::TestCase
  setup do
    @b_log = b_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_log" do
    assert_difference('BLog.count') do
      post :create, b_log: { title: @b_log.title }
    end

    assert_redirected_to b_log_path(assigns(:b_log))
  end

  test "should show b_log" do
    get :show, id: @b_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_log
    assert_response :success
  end

  test "should update b_log" do
    put :update, id: @b_log, b_log: { title: @b_log.title }
    assert_redirected_to b_log_path(assigns(:b_log))
  end

  test "should destroy b_log" do
    assert_difference('BLog.count', -1) do
      delete :destroy, id: @b_log
    end

    assert_redirected_to b_logs_path
  end
end
