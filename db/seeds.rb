# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
store_1 = Store.find_or_create_by({name: '射的屋01', description: 'hogehoge説明文'})
# Store.find_or_create_by({name: '射的屋02', description: 'hogehoge説明文'})

item_1 = store_1.items.find_or_create_by({name: '商品01', description: '商品の説明', image_url: 'https://cdn-ssl-devio-img.classmethod.jp/wp-content/uploads/2020/04/Remo-Live-Video-Conversations-Now-Simplified-Remote-collaboration-has-never-been-so-simple.-2020-04-07-19-15-23.png', height: 40, width: 10, weight: 20, score: 20, position_x: 30, position_y: 30})
item_2 = store_1.items.find_or_create_by({name: '商品02', description: '商品の説明', image_url: 'https://cdn-ssl-devio-img.classmethod.jp/wp-content/uploads/2020/04/Remo-Live-Video-Conversations-Now-Simplified-Remote-collaboration-has-never-been-so-simple.-2020-04-07-19-15-23.png', height: 30, width: 10, weight: 30, score: 30, position_x: 400, position_y: 30})
item_3 = store_1.items.find_or_create_by({name: '商品03', description: '商品の説明', image_url: 'https://cdn-ssl-devio-img.classmethod.jp/wp-content/uploads/2020/04/Remo-Live-Video-Conversations-Now-Simplified-Remote-collaboration-has-never-been-so-simple.-2020-04-07-19-15-23.png', height: 50, width: 20, weight: 40, score: 40, position_x: 30, position_y: 300})

