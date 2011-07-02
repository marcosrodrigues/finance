require 'test_helper'

class ReceivablesControllerTest < ActionController::TestCase
  setup do
    @receivable = receivables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receivables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receivable" do
    assert_difference('Receivable.count') do
      post :create, :receivable => @receivable.attributes
    end

    assert_redirected_to receivable_path(assigns(:receivable))
  end

  test "should show receivable" do
    get :show, :id => @receivable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @receivable.to_param
    assert_response :success
  end

  test "should update receivable" do
    put :update, :id => @receivable.to_param, :receivable => @receivable.attributes
    assert_redirected_to receivable_path(assigns(:receivable))
  end

  test "should destroy receivable" do
    assert_difference('Receivable.count', -1) do
      delete :destroy, :id => @receivable.to_param
    end

    assert_redirected_to receivables_path
  end
end
