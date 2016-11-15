json.contents do
  json.layout_id layout.id
  json.placed_furniture_items(layout.placed_furniture_item) do |placed_furniture_item|
    json.furniture_item_id placed_furniture_item.furniture_item.id
    json.x_coordinate_data placed_furniture_item.x_coordinate_data
    json.y_coordinate_data placed_furniture_item.y_coordinate_data
    json.z_coordinate_data placed_furniture_item.z_coordinate_data
    json.a_rotation placed_furniture_item.a_rotation
    json.b_rotation placed_furniture_item.b_rotation
    json.c_rotation placed_furniture_item.c_rotation
  end
end