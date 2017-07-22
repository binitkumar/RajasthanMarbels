class Stock < ApplicationRecord
  has_many :orders
  has_many :order_items
  belongs_to :stock_collection, optional: true

  def full_name
    "#{product_name} (#{modal_number})"
  end
end
