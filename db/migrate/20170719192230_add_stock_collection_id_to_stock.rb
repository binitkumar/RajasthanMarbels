class AddStockCollectionIdToStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :stock_collection_id, :integer
  end
end
