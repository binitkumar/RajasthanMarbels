class AddMrpToStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :mrp, :decimal
  end
end
