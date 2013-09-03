require 'test_helper'

class KrindlesControllerTest < ActionController::TestCase
  setup do
    @krindle = krindles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:krindles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create krindle" do
    assert_difference('Krindle.count') do
      post :create, krindle: {  }
    end

    assert_redirected_to krindle_path(assigns(:krindle))
  end

  test "should show krindle" do
    get :show, id: @krindle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @krindle
    assert_response :success
  end

  test "should update krindle" do
    patch :update, id: @krindle, krindle: {  }
    assert_redirected_to krindle_path(assigns(:krindle))
  end

  test "should destroy krindle" do
    assert_difference('Krindle.count', -1) do
      delete :destroy, id: @krindle
    end

    assert_redirected_to krindles_path
  end
end
