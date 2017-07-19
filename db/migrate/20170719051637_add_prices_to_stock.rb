class AddPricesToStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :purchase_price, :float
    add_column :stocks, :sale_price, :float
  end
end
