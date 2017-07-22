class AddPicesToOrderItem < ActiveRecord::Migration[5.0]
  def change
    add_column :order_items, :pieces, :integer
  end
end
