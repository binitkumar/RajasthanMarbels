class Stock < ApplicationRecord
  has_many :orders

  def full_name
    "#{product_name} (#{modal_number})"
  end
end
