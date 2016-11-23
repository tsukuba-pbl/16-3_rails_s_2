json.extract! ft_layout, :id, :room_id, :created_at, :updated_at
json.layout(ft_layout.ft_item) do |ft_item|
  json.extract! ft_item, :item_id, :top, :left, :deg
end
json.url ft_layout_url(ft_layout, format: :json)
