class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :stock_id
      t.string :product
      t.string :model_no
      t.integer :quantity

      t.timestamps
    end
  end
end
