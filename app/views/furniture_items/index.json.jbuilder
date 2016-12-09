json.item_list(@furniture_items) do |furniture_item|
  json.extract! furniture_item, :id, :width, :height
  json.icon_url furniture_item.icon_url
  json.image_url furniture_item.image_url
end