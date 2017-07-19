class AddMinimumStockToStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :minimum_stock, :integer
  end
end
