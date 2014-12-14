require 'test_helper'

class AddressControllerTest < ActionController::TestCase
  test "should get findAll" do
    get :findAll
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
