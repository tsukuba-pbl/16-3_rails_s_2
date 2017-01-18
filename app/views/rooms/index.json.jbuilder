json.item_list(@rooms) do |room|
  json.extract! room, :id, :width, :height
  json.madori_url room.madori_url
  json.buken_name room.article.name
  json.buken_address room.article.address
  json.buken_remark room.article.remark
end