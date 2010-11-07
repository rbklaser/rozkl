require 'test_helper'

class SprawdziansControllerTest < ActionController::TestCase
  setup do
    @sprawdzian = sprawdzians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sprawdzians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sprawdzian" do
    assert_difference('Sprawdzian.count') do
      post :create, :sprawdzian => @sprawdzian.attributes
    end

    assert_redirected_to sprawdzian_path(assigns(:sprawdzian))
  end

  test "should show sprawdzian" do
    get :show, :id => @sprawdzian.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sprawdzian.to_param
    assert_response :success
  end

  test "should update sprawdzian" do
    put :update, :id => @sprawdzian.to_param, :sprawdzian => @sprawdzian.attributes
    assert_redirected_to sprawdzian_path(assigns(:sprawdzian))
  end

  test "should destroy sprawdzian" do
    assert_difference('Sprawdzian.count', -1) do
      delete :destroy, :id => @sprawdzian.to_param
    end

    assert_redirected_to sprawdzians_path
  end
  
end
