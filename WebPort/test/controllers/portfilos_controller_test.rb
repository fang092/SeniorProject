require 'test_helper'

class PortfilosControllerTest < ActionController::TestCase
  setup do
    @portfilo = portfilos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfilos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfilo" do
    assert_difference('Portfilo.count') do
      post :create, portfilo: { info: @portfilo.info, name: @portfilo.name }
    end

    assert_redirected_to portfilo_path(assigns(:portfilo))
  end

  test "should show portfilo" do
    get :show, id: @portfilo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfilo
    assert_response :success
  end

  test "should update portfilo" do
    patch :update, id: @portfilo, portfilo: { info: @portfilo.info, name: @portfilo.name }
    assert_redirected_to portfilo_path(assigns(:portfilo))
  end

  test "should destroy portfilo" do
    assert_difference('Portfilo.count', -1) do
      delete :destroy, id: @portfilo
    end

    assert_redirected_to portfilos_path
  end
end
