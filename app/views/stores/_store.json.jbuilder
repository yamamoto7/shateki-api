json.extract! store, :id, :name, :description
json.set! :items do
  json.array! items do |item|
    json.partial! partial: 'items/item.json', locals: { item: item }
  end
end
