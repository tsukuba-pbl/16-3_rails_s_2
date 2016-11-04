json.extract! uxser, :id
json.gazo_url uxser.avatar_url
json.zahyo do
  json.x uxser.zahyo_x
  json.y uxser.zahyo_y
  json.z uxser.zahyo_z
end
json.offset uxser.offset