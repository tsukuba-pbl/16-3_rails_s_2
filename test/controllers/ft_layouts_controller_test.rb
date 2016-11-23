require 'test_helper'

class FtLayoutsControllerTest < ActionController::TestCase
  setup do
    @ft_layout = ft_layouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ft_layouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ft_layout" do
    assert_difference('FtLayout.count') do
      post :create, ft_layout: { room_id: @ft_layout.room_id }
    end

    assert_redirected_to ft_layout_path(assigns(:ft_layout))
  end

  test "should show ft_layout" do
    get :show, id: @ft_layout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ft_layout
    assert_response :success
  end

  test "should update ft_layout" do
    patch :update, id: @ft_layout, ft_layout: { room_id: @ft_layout.room_id }
    assert_redirected_to ft_layout_path(assigns(:ft_layout))
  end

  test "should destroy ft_layout" do
    assert_difference('FtLayout.count', -1) do
      delete :destroy, id: @ft_layout
    end

    assert_redirected_to ft_layouts_path
  end
end
