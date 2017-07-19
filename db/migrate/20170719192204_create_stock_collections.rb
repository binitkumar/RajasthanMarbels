class CreateStockCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_collections do |t|
      t.string :addition_type

      t.timestamps
    end
  end
end
