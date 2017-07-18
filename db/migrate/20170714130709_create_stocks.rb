class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :product_name
      t.string :modal_number
      t.integer :quantity

      t.timestamps
    end
  end
end
