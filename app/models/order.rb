class Order < ApplicationRecord
  has_many :order_items
  belongs_to :customer, optional: true

  accepts_nested_attributes_for :order_items
 
  STATUSES = %w{New Pending Delivered}

  after_save :update_stock_quantity
  before_create :associate_customer

  def associate_customer
    unless self.customer_contact_no.to_s.empty?
      existing_customer = Customer.where(phone_no: self.customer_contact_no).first_or_initialize
      existing_customer.name = self.customer_name
      existing_customer.address = self.customer_address
      existing_customer.save
      self.customer_id = existing_customer.id
    end
  end

  def update_stock_quantity
    self.order_items.each do |item|
      if item.stock
        if self.order_status == "Delivered" && self.stock_updated == false
          item.stock.update_attribute(:quantity, item.stock.quantity - item.quantity)
          self.update_column(:stock_updated, true)
        end
      end
    end
  end
end
