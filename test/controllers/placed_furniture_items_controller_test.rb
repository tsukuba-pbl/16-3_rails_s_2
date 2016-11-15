require 'test_helper'

class PlacedFurnitureItemsControllerTest < ActionController::TestCase
  setup do
    @placed_furniture_item = placed_furniture_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placed_furniture_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placed_furniture_item" do
    assert_difference('PlacedFurnitureItem.count') do
      post :create, placed_furniture_item: { a_rotation: @placed_furniture_item.a_rotation, b_rotation: @placed_furniture_item.b_rotation, c_rotation: @placed_furniture_item.c_rotation, furniture_item_id: @placed_furniture_item.furniture_item_id, layout_id: @placed_furniture_item.layout_id, x_coordinate_data: @placed_furniture_item.x_coordinate_data, y_coordinate_data: @placed_furniture_item.y_coordinate_data, z_coordinate_data: @placed_furniture_item.z_coordinate_data }
    end

    assert_redirected_to placed_furniture_item_path(assigns(:placed_furniture_item))
  end

  test "should show placed_furniture_item" do
    get :show, id: @placed_furniture_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @placed_furniture_item
    assert_response :success
  end

  test "should update placed_furniture_item" do
    patch :update, id: @placed_furniture_item, placed_furniture_item: { a_rotation: @placed_furniture_item.a_rotation, b_rotation: @placed_furniture_item.b_rotation, c_rotation: @placed_furniture_item.c_rotation, furniture_item_id: @placed_furniture_item.furniture_item_id, layout_id: @placed_furniture_item.layout_id, x_coordinate_data: @placed_furniture_item.x_coordinate_data, y_coordinate_data: @placed_furniture_item.y_coordinate_data, z_coordinate_data: @placed_furniture_item.z_coordinate_data }
    assert_redirected_to placed_furniture_item_path(assigns(:placed_furniture_item))
  end

  test "should destroy placed_furniture_item" do
    assert_difference('PlacedFurnitureItem.count', -1) do
      delete :destroy, id: @placed_furniture_item
    end

    assert_redirected_to placed_furniture_items_path
  end
end
