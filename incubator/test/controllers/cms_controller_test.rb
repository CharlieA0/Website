require 'test_helper'

class CmsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get approve" do
    get :approve
    assert_response :success
  end

end
