json.set! :users do
  json.array! @users do |user|
    json.partial! partial: 'users/user.json', locals: { user: user, items: user.items }
  end
end
