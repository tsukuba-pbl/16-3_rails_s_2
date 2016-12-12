json.item_list(@rooms) do |room|
  json.extract! room, :id, :width, :height
  json.madori_url room.madori_url
end