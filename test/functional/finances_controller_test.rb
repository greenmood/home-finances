require 'test_helper'

class FinancesControllerTest < ActionController::TestCase
  setup do
    @finance = finances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finance" do
    assert_difference('Finance.count') do
      post :create, finance: @finance.attributes
    end

    assert_redirected_to finance_path(assigns(:finance))
  end

  test "should show finance" do
    get :show, id: @finance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finance.to_param
    assert_response :success
  end

  test "should update finance" do
    put :update, id: @finance.to_param, finance: @finance.attributes
    assert_redirected_to finance_path(assigns(:finance))
  end

  test "should destroy finance" do
    assert_difference('Finance.count', -1) do
      delete :destroy, id: @finance.to_param
    end

    assert_redirected_to finances_path
  end
end
