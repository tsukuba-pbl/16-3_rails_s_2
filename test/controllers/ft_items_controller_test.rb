require 'test_helper'

class FtItemsControllerTest < ActionController::TestCase
  setup do
    @ft_item = ft_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ft_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ft_item" do
    assert_difference('FtItem.count') do
      post :create, ft_item: { ft_layout_id: @ft_item.ft_layout_id, item_id: @ft_item.item_id, left: @ft_item.left, top: @ft_item.top }
    end

    assert_redirected_to ft_item_path(assigns(:ft_item))
  end

  test "should show ft_item" do
    get :show, id: @ft_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ft_item
    assert_response :success
  end

  test "should update ft_item" do
    patch :update, id: @ft_item, ft_item: { ft_layout_id: @ft_item.ft_layout_id, item_id: @ft_item.item_id, left: @ft_item.left, top: @ft_item.top }
    assert_redirected_to ft_item_path(assigns(:ft_item))
  end

  test "should destroy ft_item" do
    assert_difference('FtItem.count', -1) do
      delete :destroy, id: @ft_item
    end

    assert_redirected_to ft_items_path
  end
end
