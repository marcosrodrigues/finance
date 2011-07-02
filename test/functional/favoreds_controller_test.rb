require 'test_helper'

class FavoredsControllerTest < ActionController::TestCase
  setup do
    @favored = favoreds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favoreds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favored" do
    assert_difference('Favored.count') do
      post :create, :favored => @favored.attributes
    end

    assert_redirected_to favored_path(assigns(:favored))
  end

  test "should show favored" do
    get :show, :id => @favored.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @favored.to_param
    assert_response :success
  end

  test "should update favored" do
    put :update, :id => @favored.to_param, :favored => @favored.attributes
    assert_redirected_to favored_path(assigns(:favored))
  end

  test "should destroy favored" do
    assert_difference('Favored.count', -1) do
      delete :destroy, :id => @favored.to_param
    end

    assert_redirected_to favoreds_path
  end
end
