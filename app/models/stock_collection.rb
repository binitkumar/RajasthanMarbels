class StockCollection < ApplicationRecord
  has_many :order_items
  has_many :stocks
  accepts_nested_attributes_for :stocks
end
