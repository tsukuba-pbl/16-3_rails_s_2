require 'test_helper'

class UxsersControllerTest < ActionController::TestCase
  setup do
    @uxser = uxsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uxsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uxser" do
    assert_difference('Uxser.count') do
      post :create, uxser: { avatar: @uxser.avatar, avatar_cache: @uxser.avatar_cache, name: @uxser.name, remove_avatar: @uxser.remove_avatar }
    end

    assert_redirected_to uxser_path(assigns(:uxser))
  end

  test "should show uxser" do
    get :show, id: @uxser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uxser
    assert_response :success
  end

  test "should update uxser" do
    patch :update, id: @uxser, uxser: { avatar: @uxser.avatar, avatar_cache: @uxser.avatar_cache, name: @uxser.name, remove_avatar: @uxser.remove_avatar }
    assert_redirected_to uxser_path(assigns(:uxser))
  end

  test "should destroy uxser" do
    assert_difference('Uxser.count', -1) do
      delete :destroy, id: @uxser
    end

    assert_redirected_to uxsers_path
  end
end
