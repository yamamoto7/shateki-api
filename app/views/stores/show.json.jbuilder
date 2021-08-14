json.set! :store do
  json.partial! partial: 'stores/store.json', locals: { store: @store, items: @store.items }
end
