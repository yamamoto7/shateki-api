class Store < ApplicationRecord
  has_many :store_items
  has_many :items
  accepts_nested_attributes_for :items
end
