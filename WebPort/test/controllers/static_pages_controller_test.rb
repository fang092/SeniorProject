require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get profiles" do
    get :profiles
    assert_response :success
  end

  test "should get mhcodex" do
    get :mhcodex
    assert_response :success
  end

end
