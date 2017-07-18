class AddStockIdToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :stock_id, :integer
  end
end
