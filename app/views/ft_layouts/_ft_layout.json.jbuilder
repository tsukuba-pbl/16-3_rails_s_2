json.contents do
  json.layout_id ft_layout.id
  json.placed_furniture_items(ft_layout.ft_item) do |ft_item|
    json.furniture_item_id ft_item.item_id
    json.top ft_item.top
    json.left ft_item.left
    json.deg (ft_item.deg || 0)
  end
  json.gazo_id 77
end
