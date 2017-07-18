class AddStockUpdatedToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :stock_updated, :boolean, default: false
  end
end
