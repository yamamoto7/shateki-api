json.extract! item, :id, :name, :description, :image_url, :height, :width, :weight, :score
json.set! :position do
  json.x item.position_x
  json.y item.position_y
end
