class Item < ApplicationRecord
  has_many :users, :through => :user_items
  belongs_to :store
end
