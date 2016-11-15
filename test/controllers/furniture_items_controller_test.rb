require 'test_helper'

class FurnitureItemsControllerTest < ActionController::TestCase
  setup do
    @furniture_item = furniture_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:furniture_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create furniture_item" do
    assert_difference('FurnitureItem.count') do
      post :create, furniture_item: {  }
    end

    assert_redirected_to furniture_item_path(assigns(:furniture_item))
  end

  test "should show furniture_item" do
    get :show, id: @furniture_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @furniture_item
    assert_response :success
  end

  test "should update furniture_item" do
    patch :update, id: @furniture_item, furniture_item: {  }
    assert_redirected_to furniture_item_path(assigns(:furniture_item))
  end

  test "should destroy furniture_item" do
    assert_difference('FurnitureItem.count', -1) do
      delete :destroy, id: @furniture_item
    end

    assert_redirected_to furniture_items_path
  end
end
