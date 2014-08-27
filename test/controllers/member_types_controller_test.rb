require 'test_helper'

class MemberTypesControllerTest < ActionController::TestCase
  setup do
    @member_type = member_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_type" do
    assert_difference('MemberType.count') do
      post :create, member_type: { name: @member_type.name }
    end

    assert_redirected_to member_type_path(assigns(:member_type))
  end

  test "should show member_type" do
    get :show, id: @member_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_type
    assert_response :success
  end

  test "should update member_type" do
    patch :update, id: @member_type, member_type: { name: @member_type.name }
    assert_redirected_to member_type_path(assigns(:member_type))
  end

  test "should destroy member_type" do
    assert_difference('MemberType.count', -1) do
      delete :destroy, id: @member_type
    end

    assert_redirected_to member_types_path
  end
end
