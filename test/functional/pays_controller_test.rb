require 'test_helper'

class PaysControllerTest < ActionController::TestCase
  setup do
    @pay = pays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay" do
    assert_difference('Pay.count') do
      post :create, :pay => @pay.attributes
    end

    assert_redirected_to pay_path(assigns(:pay))
  end

  test "should show pay" do
    get :show, :id => @pay.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pay.to_param
    assert_response :success
  end

  test "should update pay" do
    put :update, :id => @pay.to_param, :pay => @pay.attributes
    assert_redirected_to pay_path(assigns(:pay))
  end

  test "should destroy pay" do
    assert_difference('Pay.count', -1) do
      delete :destroy, :id => @pay.to_param
    end

    assert_redirected_to pays_path
  end
end
